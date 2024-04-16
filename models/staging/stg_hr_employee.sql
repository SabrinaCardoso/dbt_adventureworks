with
    employee as (
        select
            businessentityid as business_entity_code
            , nationalidnumber as employee_national_id_number
            , loginid as employee_login_code
            , jobtitle as employee_job_title
            , birthdate as employee_birth_date
            , maritalstatus as employee_marital_status
            , gender as employee_gender
            , hiredate as employee_hire_date
            , salariedflag as employee_salaried_flag
            , vacationhours as employee_vacation_hours
            , sickleavehours as employee_sick_leave_hours
            , currentflag as employee_current_flag
            , rowguid as employee_row_guid
            , organizationnode as employee_organization_node
            , modifieddate as modification_date
        from {{ source('raw_human_resources', 'employee') }}
    )
select *
from employee