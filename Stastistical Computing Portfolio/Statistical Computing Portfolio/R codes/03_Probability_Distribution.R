#Topic 3:Probability Distributions
n <- 20; p <- .3
dbinom(6,n,p); pbinom(6,n,p); n*p; n*p*(1-p)
dist_df <- data.frame(
  Metric = c("P(X = 6)", "P(X <= 6)", "Mean (n*p)", "Variance (n*p*(1-p))"),
  Value = c(dbinom(6, n, p), pbinom(6, n, p), n * p, n * p * (1 - p))
)
write.csv(
  dist_df,
  "Probability_Distributions.csv", 
  row.names = FALSE
)
data <- rnorm(500, mean = 50, sd = 10)
hist(data, probability = TRUE, col = "skyblue",
     main = "Topic 3: Histogram & Fitted Curve")
curve(dnorm(x, mean = mean(data), sd = sd(data)), col = "red", lwd = 2, add = TRUE)
