#Topic 11:Numerical optimization
f <- function(x) (x-3)^2 + 2
optim(par=0, fn=f)
f <- function(x) (x - 3)^2 + 4
opt <- optimize(f, c(-2, 8))
opt_df <- data.frame(
  Minimum_X = opt$minimum,
  Objective_Value = opt$objective
)
write.csv(opt_df, "Topic_11_Numerical_Optimization.csv", row.names = FALSE)

curve(f, -2, 8, main = "Topic 11: Numerical Optimization")
points(opt$minimum, opt$objective, col = "red", pch = 19, cex = 1.5)
