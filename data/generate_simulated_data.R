# Generate an illustrative customer-level telecom data set.
# The data are synthetic and contain no real customer records.
set.seed(20261122)
n <- 600L
customer_id <- sprintf("C%04d", seq_len(n))
contract <- sample(c("Month-to-month", "One year", "Two year"), n,
                   replace = TRUE, prob = c(.56, .27, .17))
tenure_months <- pmax(1L, pmin(72L, round(rgamma(n, shape = 2.2, scale = 12))))
support_tickets <- rpois(n, lambda = .8 + .025 * (72 - tenure_months))
internet_service <- sample(c("Fiber", "DSL", "No internet"), n, replace = TRUE,
                           prob = c(.48, .37, .15))
base_charge <- ifelse(internet_service == "Fiber", 78,
               ifelse(internet_service == "DSL", 57, 29))
monthly_charge <- round(pmax(18, rnorm(n, base_charge, 11)), 2)
# The following simulation rules link churn propensity to features for teaching.
log_odds <- -2.15 + .95 * (contract == "Month-to-month") -
  .65 * (contract == "Two year") - .028 * tenure_months +
  .22 * pmin(support_tickets, 5)
churn <- ifelse(rbinom(n, 1, plogis(log_odds)) == 1, "Yes", "No")
# Add missing monthly charges for data-cleaning practice.
monthly_charge[sample(seq_len(n), size = 18)] <- NA_real_
customers <- data.frame(customer_id, contract, tenure_months, support_tickets,
                        internet_service, monthly_charge, churn)
write.csv(customers, "data/customer_churn_simulated.csv", row.names = FALSE,
          na = "")
