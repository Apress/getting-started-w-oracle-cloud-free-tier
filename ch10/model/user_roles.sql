create table user_roles (
  user_role_id number generated always as identity
  , user_id number not null
  , role_name varchar2(5) default 'USER' not null
  , created_by varchar2(30)
  , created_on timestamp with local time zone
  , updated_by varchar2(30)
  , updated_on timestamp with local time zone
  , constraint user_roles_pk primary key (user_role_id)
  , constraint user_roles_fk1 foreign key (user_id) references users(user_id) on delete cascade
  , constraint user_roles_chk1 check (upper(role_name) in ('USER', 'ADMIN'))
)
/

create or replace trigger user_roles_biu
before insert or update on user_roles
for each row
declare
begin
  :new.role_name := upper(:new.role_name);

  if inserting then
    :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'), user);
    :new.created_on := localtimestamp;
  else
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'), user);
    :new.updated_on := localtimestamp;
  end if;
end;
/