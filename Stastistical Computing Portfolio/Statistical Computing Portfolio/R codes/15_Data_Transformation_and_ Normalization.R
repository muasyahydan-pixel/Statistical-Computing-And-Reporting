#Topic 15:Data transformation and normalization
x <- c(10,20,30,40,50)
scale(x)
(x-min(x))/(max(x)-min(x))
raw <- rexp(200, rate = 0.2)
log_trans <- log1p(raw)
transform_df <- data.frame(
  Observation = 1:length(raw),
  Raw_Skewed_Data = raw,
  Log_Transformed_Data = log_trans
)
write.csv(transform_df, "Topic_15_Data_Transformation.csv", row.names = FALSE)
par(mfrow = c(1, 2))
hist(raw, col = "gray", main = "Original Skewed Data")
hist(log1p(raw), col = "green", main = "Log-Transformed Data")
