create or replace package user_security
as
  gc_num_interations constant number := 10000;

  function hash_password(
    p_password varchar2
    , p_salt raw
    , p_num_iterations number
    , p_hash_length number default null
  ) return raw;

  function authenticate_user(
    p_username varchar2
    , p_password varchar2
  ) return boolean;

  procedure post_login;
end user_security;
/