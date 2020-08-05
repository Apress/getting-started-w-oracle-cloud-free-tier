create table proposals (
  proposal_id number generated always as identity
  , speaker_id number not null
  , title varchar2(500) not null
  , abstract clob
  , additional_details clob
  , speaker_bio clob
  , created_by varchar2(30)
  , created_on timestamp with local time zone
  , updated_by varchar2(30)
  , updated_on timestamp with local time zone
  , constraint proposals_pk primary key (proposal_id)
  , constraint proposals_fk1 foreign key (speaker_id) references users(user_id) on delete cascade
)
/

create or replace trigger proposals_biu
before insert or update on proposals
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
