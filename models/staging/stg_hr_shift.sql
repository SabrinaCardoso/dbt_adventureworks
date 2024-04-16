with
    shift as (
        select
            shiftid as shift_code
            , name as shift_period
            , starttime as shift_start_time
            , endtime as shift_end_time
            , modifieddate as date_modified
        from {{ source('raw_human_resources', 'shift') }}
    )
select *
from shift