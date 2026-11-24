#Topic 7:Correlation and covariance
d <- data.frame(hours=c(1,2,3,4,5,6), score=c(45,50,55,65,68,75))
cov(d$hours,d$score); cor(d$hours,d$score)
x <- rnorm(50, 10, 2)
y <- 2.5 * x + rnorm(50, 0, 3)
cor_df <- data.frame(
  Metric = c("Correlation (r)", "Covariance"),
  Value = c(cor(x, y), cov(x, y))
)
write.csv(cor_df, "Topic_07_Correlation_Covariance.csv", row.names = FALSE)
plot(x, y, pch = 19, col = "purple",
     main = paste("Topic 7: Scatter Plot (r =", round(cor(x, y), 2), ")"))
