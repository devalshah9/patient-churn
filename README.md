# patient-churn
Notebook-based analysis of a patient churn dataset, focused on exploratory insights and churn drivers.

## Dataset
- `analysis/patient_churn_dataset.csv`

## Analysis
- `analysis/patient_churn_exploration.ipynb`
- `analysis/patient_churn_exploration.html`

## Executive Summary
- Baseline churn is 68.3%, so this dataset is skewed toward churned patients.
- Operational friction aligns with higher churn: patients with billing issues churn 9.5 percentage points more, and non-portal users churn 8.4 points more.
- Recency and relationship depth matter: patients with 00-11 months of tenure churn 75.6% versus 63.8% for patients with 96+ months of tenure.
- Cost and engagement also separate churned patients: churners show higher out-of-pocket cost, more missed appointments, and longer gaps since their last visit.
- Satisfaction remains directionally protective, but the strongest signals in the analysis are still tenure, recency, cost burden, and engagement behavior.
- The notebook includes a logistic regression baseline and a random forest comparison; both are useful for ranking drivers, but model quality remains modest and is not production-grade.
