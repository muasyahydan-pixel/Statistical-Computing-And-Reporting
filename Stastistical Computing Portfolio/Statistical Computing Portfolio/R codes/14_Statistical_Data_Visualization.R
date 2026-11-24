#Topic 14:Statistical data visualization
d <- data.frame(hours=1:8, score=c(42,48,53,60,65,70,76,82))
summary_df <- data.frame(
  Statistic = c("Count", "Mean", "SD", "Median", "IQR", "Min", "Max"),
  Value = c(length(data), mean(data), sd(data), median(data), IQR(data), min(data), max(data))
)
write.csv(summary_df, "Topic_14_Data_Visualization_Summary.csv", row.names = FALSE)


hist(d$score); boxplot(d$score); plot(d$hours,d$score, xlab='Hours', ylab='Score')
data <- rnorm(100, 50, 10)
par(mfrow = c(1, 2))
hist(data, col = "turquoise4", main = "Histogram")
boxplot(data, col = "orange", main = "Boxplot")
