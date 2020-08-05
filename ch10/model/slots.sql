create table slots (
  slot_id number generated always as identity
  , title varchar2(500)
  , description varchar2(500)
  , session_start date not null
  , session_end date not null
  , location varchar2(100)
  , session_id number
  , created_by varchar2(30)
  , created_on timestamp with local time zone
  , updated_by varchar2(30)
  , updated_on timestamp with local time zone
  , constraint slots_pk primary key (slot_id)
  , constraint slots_fk1 foreign key (session_id) references proposals(proposal_id)
)
/

create or replace trigger slots_biu
before insert or update on slots
for each row
declare
begin
  if inserting then
    :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'), user);
    :new.created_on := localtimestamp;
  else
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'), user);
    :new.updated_on := localtimestamp;
  end if;
end;
/