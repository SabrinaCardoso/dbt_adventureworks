with
    department as (
        select
            departmentid as department_code
            , name as department_name
            , groupname as department_group
            , modifieddate as modification_date
        from {{ source('raw_human_resources', 'department') }}
    )
select *
from department