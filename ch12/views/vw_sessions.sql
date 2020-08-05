create or replace view vw_sessions
as
  select
    s.slot_id
    , coalesce(p.title, s.title) as title
    , p.abstract
    , u.first_name as speaker_first_name
    , u.last_name as speaker_last_name
    , s.session_start
    , s.session_end
    , to_timestamp_tz(
        to_char(s.session_start, 'YYYY-MM-DD HH24:MI:SS') || ' America/Vancouver'
        , 'YYYY-MM-DD HH24:MI:SS TZR'
      ) at time zone 'UTC' as session_start_utc
    , to_timestamp_tz(
        to_char(s.session_end, 'YYYY-MM-DD HH24:MI:SS') || ' America/Vancouver'
        , 'YYYY-MM-DD HH24:MI:SS TZR'
      ) at time zone 'UTC' as session_end_utc
    , s.location
  from slots s
  left join proposals p on p.proposal_id = s.session_id
  left join users u on u.user_id = p.speaker_id
  order by session_start
;