begin
  ords.define_template(
    p_module_name => 'schedule.v1'
    , p_pattern => 'session/'
    , p_priority => 0
    , p_etag_type => 'HASH'
    , p_etag_query => null
    , p_comments => null
  );

  ords.define_template(
    p_module_name => 'schedule.v1'
    , p_pattern => 'session/:session_id'
    , p_priority => 0
    , p_etag_type => 'HASH'
    , p_etag_query => null
    , p_comments => null
  );

  commit;
end;
/