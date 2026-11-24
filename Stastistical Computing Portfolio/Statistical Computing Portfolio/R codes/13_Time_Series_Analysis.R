#Topic 13:Time-series analysis
set.seed(4); n <- 300; y <- numeric(n)
for(t in 2:n) y[t] <- .6*y[t-1] + rnorm(1)
plot.ts(y); acf(y); arima(y, order=c(1,0,0))
ts_data <- ts(cumsum(rnorm(100)) + 50, frequency = 12)
trend <- stats::filter(ts_data, rep(1/5, 5))
ts_df <- data.frame(
  Time_Index = 1:length(ts_data),
  Observed_Value = as.numeric(ts_data),
  Moving_Average_Trend = as.numeric(trend)
)
write.csv(ts_df, "Topic_13_Time_Series.csv", row.names = FALSE)

plot(ts_data, main = "Topic 13: Time-Series Plot", ylab = "Value")
lines(stats::filter(ts_data, rep(1/5, 5)), col = "red", lwd = 2)
