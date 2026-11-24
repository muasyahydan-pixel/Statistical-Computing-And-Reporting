#Topic 8:Linear regression and least squares
d <- data.frame(hours=1:8, score=c(42,48,53,60,65,70,76,82))
m <- lm(score ~ hours, data=d)
summary(m); fitted(m); residuals(m)
x <- 1:30
y <- 3 * x + 5 + rnorm(30, 0, 3)
model <- lm(y ~ x)
model_summary <- summary(model)
reg_results <- data.frame(
  Term = rownames(model_summary$coefficients),
  Estimate = model_summary$coefficients[, "Estimate"],
  Std_Error = model_summary$coefficients[, "Std. Error"],
  t_Value = model_summary$coefficients[, "t value"],
  p_Value = model_summary$coefficients[, "Pr(>|t|)"],
  R_Squared = model_summary$r.squared
)
write.csv(reg_results, "Topic_08_Linear_Regression.csv", row.names = FALSE)

plot(x, y, pch = 19, main = "Topic 8: Linear Regression Fitted Line")
abline(model, col = "red", lwd = 2)