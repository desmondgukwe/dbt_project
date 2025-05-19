
-- Working example: staging model for raw patient claims
-- Cleans data and derives claim_month


with source as (
    select * from {{ ref('raw_claims') }}
),
renamed as (
    select
        claim_id,
        patient_id,
        cast(claim_date as date) as claim_date,
        cast(claim_amount as numeric) as claim_amount,
        diagnosis_code,
        DATE_TRUNC(cast(claim_date as date), MONTH) as claim_month

    from source
)
select * from renamed
