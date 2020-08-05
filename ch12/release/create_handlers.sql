begin
  ords.define_handler(
    p_module_name => 'schedule.v1'
    , p_pattern => 'session/'
    , p_method => 'GET'
    , p_source_type => ords.source_type_collection_feed
    , p_items_per_page => 25
    , p_mimes_allowed => null
    , p_comments => null
    , p_source => q'~
select
  slot_id as session_id
  , title
  , abstract
  , speaker_first_name
  , speaker_last_name
  , session_start_utc as session_start
  , session_end_utc as session_end
  , location
from vw_sessions
      ~'
  );

  ords.define_handler(
    p_module_name => 'schedule.v1'
    , p_pattern => 'session/:session_id'
    , p_method => 'GET'
    , p_source_type => ords.source_type_collection_item
    , p_items_per_page => null
    , p_mimes_allowed => null
    , p_comments => null
    , p_source => q'~
select
  slot_id as session_id
  , title
  , abstract
  , speaker_first_name
  , speaker_last_name
  , session_start
  , session_end
  , location
from vw_sessions
where slot_id = :slot_id
      ~'
  );

  commit;
end;
/