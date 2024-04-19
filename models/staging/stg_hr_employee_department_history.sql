with
    employee_department_history as (
        select
            businessentityid as business_entity_code
            , departmentid as department_code
            , shiftid as shift_code
            , startdate as start_date
            , enddate as end_date
            , modifieddate as date_modified
        from {{ source('raw_human_resources', 'hr_employeedepartmenthistory') }}
    )
select *
from employee_department_history