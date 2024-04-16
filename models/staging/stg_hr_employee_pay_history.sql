with
    employee_pay_history as (
        select
            businessentityid as business_entity_code
            , ratechangedate as rate_change_date
            , rate as payment_rate
            , payfrequency as payment_frequency
            , modifieddate as modification_date
        from {{ source('raw_human_resources', 'employeepayhistory') }}
    )
select *
from employee_pay_history