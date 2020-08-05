create or replace package user_admin
as
  -- User role names
  gc_role_admin constant varchar2(5) := 'ADMIN';

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
  );

  procedure make_admin(
    p_user_id in users.user_id%type
  );
end user_admin;
/