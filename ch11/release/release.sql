@../packages/user_admin.pks
@../packages/user_admin.pkb
@../packages/user_security.pks
@../packages/user_security.pkb

prompt recompiling packages
declare
  c_schema constant varchar2(32767) := user;
begin
  dbms_utility.compile_schema(schema => c_schema, compile_all => false);
end;
/
