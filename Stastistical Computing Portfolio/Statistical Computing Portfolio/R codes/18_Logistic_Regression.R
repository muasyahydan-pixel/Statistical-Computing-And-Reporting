#Topic 18:Logistic regression
d <- data.frame(hours=c(1,2,2,3,4,4,5,6,6,7), pass=c(0,0,0,0,1,0,1,1,1,1))
fit <- glm(pass ~ hours, data=d, family=binomial)
summary(fit); exp(coef(fit)); predict(fit,type='response')
x <- seq(-5, 5, length = 100)
y <- ifelse(x + rnorm(100) > 0, 1, 0)
fit <- glm(y ~ x, family = binomial)
coef_mat <- summary(fit)$coefficients
log_df <- data.frame(
  Term = rownames(coef_mat),
  Estimate = coef_mat[, "Estimate"],
  Std_Error = coef_mat[, "Std. Error"],
  Z_Value = coef_mat[, "z value"],
  P_Value = coef_mat[, "Pr(>|z|)"],
  row.names = NULL
)
write.csv(log_df, "Topic_18_Logistic_Regression.csv", row.names = FALSE)

plot(x, y, pch = 19, main = "Topic 18: Logistic Regression Curve")
lines(x, predict(fit, type = "response"), col = "red", lwd = 2)
