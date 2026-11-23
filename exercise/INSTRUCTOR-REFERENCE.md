# Instructor reference — customer churn exercise

Use the rendered `contract_summary` and `revenue_risk` tables because students may have edited the CSV.

- A churn rate is churned customers divided by all customers in that segment. A rate without its denominator hides sample size.
- The generator generally makes month-to-month contracts and shorter tenure more associated with churn. Treat the sample values as outcomes of simulated rules, not findings about telecom customers.
- `observed_churned_mrr` sums the monthly charges of rows marked churned. It is one month's recurring charge associated with these rows, not annualized or guaranteed realized loss.
- `illustrative_next_period_exposure` applies an observed segment rate to active MRR. It is a scenario, not a calibrated forecast.
- Good recommendations include validating definitions on real data, reviewing support reasons, and testing a retention intervention with a comparison group. Association does not establish causation.
- Task 7: two-year 10/97 = 10.3 % (95 % CI about 5–19 %), one-year 12/173 = 6.9 % (about 4–12 %). The intervals overlap widely; with under 100 customers a difference of a few churners moves the rate by several points. The generator gives two-year contracts a lower churn propensity, so the observed ordering is sampling noise.
