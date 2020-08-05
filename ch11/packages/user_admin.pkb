create or replace package body user_admin
as
  procedure create_user(
    p_username in users.username%type
    , p_password in varchar2
    , p_password_repeat in varchar2
    , p_first_name in users.first_name%type
    , p_last_name in users.last_name%type
    , p_email_address in users.email_address%type
    , p_agree_to_terms in users.agree_to_terms_yn%type
    , p_active in users.active_yn%type default 'Y'
    , p_user_id out users.user_id%type
  )
  as
    c_user_pw_salt constant users.user_pw_salt%type := dbms_crypto.randombytes(16);

    l_user_password users.user_password%type;

    passwords_not_matched exception;
  begin
    if p_password != p_password_repeat then
      raise passwords_not_matched;
    end if;

    l_user_password :=
      user_security.hash_password(
        p_password => p_password
        , p_salt => c_user_pw_salt
        , p_num_iterations => user_security.gc_num_interations
      )
    ;

    insert into users(
      first_name
      , last_name
      , email_address
      , username
      , user_password
      , user_pw_salt
      , user_pw_iter
      , agree_to_terms_yn
      , active_yn
    ) values (
      p_first_name
      , p_last_name
      , p_email_address
      , p_username
      , l_user_password
      , c_user_pw_salt
      , user_security.gc_num_interations
      , p_agree_to_terms
      , p_active
    ) returning user_id into p_user_id;
  end create_user;

  procedure make_admin(
    p_user_id in users.user_id%type
  ) as
  begin
    insert into user_roles(user_id, role_name)
    values (p_user_id, user_admin.gc_role_admin);
  end make_admin;
end user_admin;
/