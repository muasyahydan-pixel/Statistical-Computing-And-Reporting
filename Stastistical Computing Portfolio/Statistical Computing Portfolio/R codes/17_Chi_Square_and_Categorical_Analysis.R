#Topic 17:Chi-square and categorical data analysis
T <- matrix(c(30,15,20,35), nrow=2)
chisq.test(T, correct=FALSE)
tbl <- matrix(c(30, 15, 10, 25), nrow = 2,
              dimnames = list(c("Method A", "Method B"), c("Pass", "Fail")))
chi_res <- chisq.test(tbl)
chi_df <- data.frame(
  Statistic = as.numeric(chi_res$statistic),
  DF = as.numeric(chi_res$parameter),
  P_Value = chi_res$p.value
)
write.csv(chi_df, "Topic_17_Chi_Square_Results.csv", row.names = FALSE)


mosaicplot(tbl, color = c("skyblue", "salmon"),
           main = "Topic 17: Categorical Mosaic Plot")
