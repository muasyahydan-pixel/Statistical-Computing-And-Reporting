#Topic 22:Missing-data analysis and imputation
d <- data.frame(age=c(20,22,NA,25,27), score=c(60,NA,70,75,80))
colMeans(is.na(d))
for(j in seq_along(d)) d[is.na(d[,j]),j] <- median(d[,j],na.rm=TRUE)
d
df <- data.frame(age = c(1, NA, 3, 4, NA), score = c(5, 6, NA, 8, 9))
missing_summary <- data.frame(
  Column = names(df),
  Missing_Count = colSums(is.na(df)),
  Missing_Percent = colMeans(is.na(df)) * 100
)
write.csv(missing_summary, "Topic_22_Missing_Data_Summary.csv", row.names = FALSE)

barplot(colSums(is.na(df)), col = "green",
        main = "Topic 22: Missing Value Counts", ylab = "Count")
