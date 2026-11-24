#Topic 20:Bootstrap and resampling methods
set.seed(3); x <- c(12,15,14,10,18,16,13,17)
boot <- replicate(5000, mean(sample(x,length(x),replace=TRUE)))
mean(x); sd(boot); quantile(boot,c(.025,.975))
data <- c(12, 15, 14, 19, 22, 25, 30, 18, 17, 21)
boot_means <- replicate(1000, mean(sample(data, replace = TRUE)))
ci_bounds <- quantile(boot_means, c(0.025, 0.975))
boot_df <- data.frame(
  Original_Mean = mean(data),
  Bootstrap_Mean = mean(boot_means),
  Bootstrap_SE = sd(boot_means),
  CI_Lower_2.5 = as.numeric(ci_bounds[1]),
  CI_Upper_97.5 = as.numeric(ci_bounds[2])
)
write.csv(boot_df, "Topic_20_Bootstrap_Results.csv", row.names = FALSE)

hist(boot_means, col = "coral", main = "Topic 20: Bootstrap Distribution")
abline(v = quantile(boot_means, c(0.025, 0.975)), col = "blue", lwd = 2, lty = 2)
