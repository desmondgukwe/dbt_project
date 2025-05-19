--

-- PART 1
-- TASK: Create a dimension model for patients
-- Reference raw_patients and stg_claims
-- Enrich patients with:
--   - First claim date
--   - Total number of claims
--   - Total claim amount
--   - Days since first claim

with patients as (
    select * from {{ ref('raw_patients') }}
),

-- Add your logic here to join with stg_claims

final as (
    select * from patients
)

select * from final
