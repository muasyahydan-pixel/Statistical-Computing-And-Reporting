#Topic 19:Non-parametric statistical methods
A <- c(12,15,14,10,18,16); B <- c(20,22,19,25,21,24)
wilcox.test(A,B, exact=FALSE)
s1 <- rexp(40, 0.1)
s2 <- rexp(40, 0.05)
wilcox_res <- wilcox.test(s1, s2)
nonparam_df <- data.frame(
  Median_Sample_1 = median(s1),
  Median_Sample_2 = median(s2),
  W_Statistic = as.numeric(wilcox_res$statistic),
  P_Value = wilcox_res$p.value
)
write.csv(nonparam_df, "Topic_19_Non_Parametric_Results.csv", row.names = FALSE)
boxplot(s1, s2, names = c("Sample 1", "Sample 2"),
        col = "yellow", main = "Topic 19: Non-Parametric Comparison")
