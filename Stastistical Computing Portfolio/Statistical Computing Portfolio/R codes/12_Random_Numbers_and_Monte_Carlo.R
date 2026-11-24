#Topic 12:Random numbers and Monte Carlo methods
set.seed(10); N <- 100000
x <- runif(N); y <- runif(N)
4*mean(x^2+y^2 <= 1)
N <- 2000
x <- runif(N, -1, 1)
y <- runif(N, -1, 1)
pi_est <- 4 * cumsum(x^2 + y^2 <= 1) / (1:N)
pi_est <- 4 * cumsum(x^2 + y^2 <= 1) / (1:N)
mc_df <- data.frame(
  Iteration = 1:N,
  Pi_Estimate = pi_est,
  True_Pi = pi,
  Absolute_Error = abs(pi_est - pi)
)
write.csv(mc_df, "Topic_12_Monte_Carlo_Pi.csv", row.names = FALSE)

plot(pi_est, type = "l", main = "Topic 12: Monte Carlo Pi Convergence", ylab = "Estimate")
abline(h = pi, col = "red", lty = 2)
