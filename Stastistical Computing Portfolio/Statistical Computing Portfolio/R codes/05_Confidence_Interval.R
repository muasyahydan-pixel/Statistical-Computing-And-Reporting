#Topic 5:Confidence intervals
x <- c(12,15,14,10,18,16,13,17,15,14)
t.test(x, conf.level=.95)$conf.int
means <- c(72.0, 78.5)
ci <- c(3.5, 4.2)
ci_df <- data.frame(
  Group = groups,
  Mean = means,
  Margin_of_Error = ci,
  Lower_95_CI = means - ci,
  Upper_95_CI = means + ci
)
write.csv(ci_df, "Confidence_Intervals.csv", row.names = FALSE)

plot(1:2, means, ylim = c(65, 86), xaxt = "n", pch = 19,
     xlab = "", ylab = "Mean Score", main = "Topic 5: 95% Confidence Intervals")
axis(1, at = 1:2, labels = c("Group A", "Group B"))
arrows(1:2, means - ci, 1:2, means + ci, angle = 90, code = 3, length = 0.1)
