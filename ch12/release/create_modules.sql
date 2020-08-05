begin
  ords.define_module(
    p_module_name => 'schedule.v1'
    , p_base_path => '/schedule/v1/'
    , p_items_per_page => 25
    , p_status => 'PUBLISHED'
    , p_comments => null
  );

  commit;
end;
/
