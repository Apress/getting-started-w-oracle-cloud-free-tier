begin
  ords.define_parameter(
    p_module_name => 'schedule.v1'
    , p_pattern => 'session/:session_id'
    , p_method => 'GET'
    , p_name => 'session_id'
    , p_bind_variable_name => 'slot_id'
    , p_source_type => 'URI'
    , p_param_type => 'INT'
    , p_access_method => 'IN'
    , p_comments => null
  );

  commit;
end;
/