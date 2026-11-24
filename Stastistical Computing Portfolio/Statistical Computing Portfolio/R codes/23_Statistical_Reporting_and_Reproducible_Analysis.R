#Topic 23:Statistical reporting and reproducible analysis
set.seed(12)
d <- data.frame(score=rnorm(100,65,10))
summary(d); sd(d$score)
report_df <- data.frame(Index = 1:nrow(d), score = d$score)
write.csv(report_df, "Topic_23_Reproducible_Data.csv", row.names = FALSE)

hist(d$score, main='Distribution of scores', xlab='Score')
plot(1:4, c(10, 20, 25, 30), type = "b", pch = 19,
     main = "Topic 23: Reproducible Report Figure")


