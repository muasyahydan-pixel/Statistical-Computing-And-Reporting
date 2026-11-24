#Topic 6:Hypothesis testing
x <- c(52,48,55,51,49,54,53,47,56,50)
t.test(x, mu=50)
x <- seq(-4, 4, length = 300)
z_stat <- 2.3
z_crit <- 1.96
p_val <- 2 * (1 - pnorm(abs(z_stat)))
ht_df <- data.frame(
  Test_Statistic = z_stat,
  Critical_Value_Lower = -z_crit,
  Critical_Value_Upper = z_crit,
  Two_Tailed_P_Value = round(p_val, 5),
  Decision = ifelse(abs(z_stat) > z_crit, "Reject H0", "Fail to Reject H0")
)
write.csv(ht_df, "Hypothesis_Testing.csv", row.names = FALSE)
plot(x, dnorm(x), type = "l", lwd = 2,
     main = "Topic 6: Hypothesis Test Rejection Region", ylab = "Density")
polygon(c(1.96, seq(1.96, 4, 0.01), 4), c(0, dnorm(seq(1.96, 4, 0.01)), 0), col = "red")
polygon(c(-4, seq(-4, -1.96, 0.01), -1.96), c(0, dnorm(seq(-4, -1.96, 0.01)), 0), col = "red")
abline(v = 2.3, col = "blue", lwd = 2, lty = 2)
