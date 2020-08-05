-- Execute this to remove all database objects created in this chapter.
declare
  c_module_name constant varchar2(30) := 'schedule.v1';
begin
  ords.delete_module(
    p_module_name => c_module_name
  );
  commit;
end;
/

drop view vw_sessions;