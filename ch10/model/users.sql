create table users (
  user_id number generated always as identity
  , username varchar2(200) not null
  , user_password raw(32) not null
  , user_pw_salt raw(16) not null
  , user_pw_iter number not null
  , first_name varchar2(200) not null
  , last_name varchar2(200) not null
  , email_address varchar2(200) not null
  , agree_to_terms_yn varchar2(1) default 'N' not null
  , active_yn varchar2(1) default 'Y' not null
  , created_by varchar2(30)
  , created_on timestamp with local time zone
  , updated_by varchar2(30)
  , updated_on timestamp with local time zone
  , constraint users_pk primary key (user_id)
  , constraint users_uk1 unique (username)
  , constraint users_chk1 check (upper(agree_to_terms_yn) in ('Y', 'N'))
  , constraint users_chk2 check (upper(active_yn) in ('Y', 'N'))
)
/

create or replace trigger users_biu
before insert or update on users
for each row
declare
begin
  :new.agree_to_terms_yn := upper(:new.agree_to_terms_yn);
  :new.active_yn := upper(:new.active_yn);

  if inserting then
    :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'), user);
    :new.created_on := localtimestamp;
  else
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'), user);
    :new.updated_on := localtimestamp;
  end if;
end;
/