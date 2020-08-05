whenever sqlerror exit sql.sqlcode rollback

set define off;
set sqlblanklines on;

prompt compile required view
@../views/vw_sessions.sql

@create_modules.sql
@create_templates.sql
@create_handlers.sql
@create_parameters.sql