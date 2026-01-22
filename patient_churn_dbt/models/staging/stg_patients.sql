with src as (
    select * from {{ ref('patient_churn_dataset') }}
),

renamed as (
    select
        PatientID as patient_id,
        cast(Age as integer) as age,
        trim(Gender) as gender,
        trim(State) as state,
        cast(Tenure_Months as integer) as tenure_months,
        trim(Specialty) as specialty,
        trim(Insurance_Type) as insurance_type,
        cast(Visits_Last_Year as integer) as visits_last_year,
        cast(Missed_Appointments as integer) as missed_appointments,
        cast(Days_Since_Last_Visit as integer) as days_since_last_visit,
        cast(Last_Interaction_Date as date) as last_interaction_date,

        cast(Overall_Satisfaction as double) as overall_satisfaction,
        cast(Wait_Time_Satisfaction as double) as wait_time_satisfaction,
        cast(Staff_Satisfaction as double) as staff_satisfaction,
        cast(Provider_Rating as double) as provider_rating,

        cast(Avg_Out_Of_Pocket_Cost as double) as avg_out_of_pocket_cost,

        case when cast(Billing_Issues as integer) = 1 then true else false end as billing_issues,
        case when cast(Portal_Usage as integer) = 1 then true else false end as portal_usage,

        cast(Referrals_Made as integer) as referrals_made,
        cast(Distance_To_Facility_Miles as double) as distance_to_facility_miles,

        case when cast(Churned as integer) = 1 then true else false end as churned
    from src
)

select * from renamed