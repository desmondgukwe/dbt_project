
# Health Analytics Engineer dbt component of Assessment 


### dbt (Optional)
1. Review the working example in `models/staging/stg_claims.sql`
2. Add logic in `models/marts/dim/dim_patients.sql` to:
   - Enrich patients with total claims, first claim date, and spend
   - Calculate how many days since their first claim


---

## How to Run

1. Clone or unzip this repo
2. Set up your `profiles.yml` 
3. Run:
```bash
dbt deps
dbt run
```

---



