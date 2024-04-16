with
    job_candidate as (
        select
            jobcandidateid as job_candidate_code
            , businessentityid as business_entity_code
            , resume as job_candidate_resume
            , modifieddate as date_modified
        from {{ source('raw_human_resources', 'jobcandidate') }}
    )
select *
from job_candidate