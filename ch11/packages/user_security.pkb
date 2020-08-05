create or replace package body user_security
as
  function hash_password(
    p_password varchar2
    , p_salt raw
    , p_num_iterations number
    , p_hash_length number default null
  ) return raw
  as
    l_accumulator raw(2000);
  begin
    l_accumulator := dbms_crypto.mac(
      src => utl_i18n.string_to_raw(p_password) || p_salt
      , typ => dbms_crypto.hmac_sh256
      , key => p_salt
    );

    for i in 1..p_num_iterations
    loop
      l_accumulator :=
        utl_raw.bit_xor(
          r1 => l_accumulator
          , r2 =>
              dbms_crypto.mac(
                src => utl_i18n.string_to_raw(p_password) || l_accumulator
                , typ => dbms_crypto.hmac_sh256
                , key => p_salt
              )
        )
      ;
    end loop;

    return
      utl_raw.substr(
        r => l_accumulator
        , pos => 1
        , len =>
            case
              when p_hash_length is not null and utl_raw.length(l_accumulator) > p_hash_length then
                p_hash_length
              else
                null
            end
      )
    ;
  end hash_password;

  function authenticate_user (
    p_username varchar2
    , p_password varchar2
  ) return boolean
  as
    l_user_password users.user_password%type;
    l_user_pw_salt users.user_pw_salt%type;
    l_user_pw_iter users.user_pw_iter%type;

    l_result boolean := false;
  begin
    begin
      select user_password, user_pw_salt, user_pw_iter
      into l_user_password, l_user_pw_salt, l_user_pw_iter
      from users
      where 1 = 1
        and lower(username) = lower(p_username)
        and active_yn = 'Y'
      ;

      l_result :=
        l_user_password =
          user_security.hash_password(
            p_password => p_password
            , p_salt => l_user_pw_salt
            , p_num_iterations => l_user_pw_iter
          )
      ;
    exception
      when no_data_found then
        l_result := false;
    end;

    return l_result;
  end authenticate_user;

  procedure post_login
  as
    l_user_id users.user_id%type;
    l_full_name varchar2(32767);
  begin
    select user_id, first_name || ' ' || last_name
    into l_user_id, l_full_name
    from users
    where lower(username) = lower(apex_application.g_user);

    apex_util.set_session_state(p_name => 'G_USER_ID', p_value => l_user_id);
    apex_util.set_session_state(p_name => 'G_FULL_NAME', p_value => l_full_name);
  end post_login;
end user_security;
/