#Topic 21:Multivariate statistical analysis
d <- data.frame(hours=1:8, attendance=seq(60,95,5), score=c(40,45,52,58,65,71,77,84))
cor(d); summary(lm(score ~ hours + attendance, data=d))
X <- rbind(matrix(rnorm(60, 0), ncol = 2), matrix(rnorm(60, 4), ncol = 2))
km <- kmeans(X, centers = 2)
cluster_df <- data.frame(
  X1 = X[, 1],
  X2 = X[, 2],
  Cluster = km$cluster
)
write.csv(cluster_df, "Topic_21_Multivariate_Clustering.csv", row.names = FALSE)

plot(X, col = km$cluster, pch = 19, main = "Topic 21: Multivariate Clustering")
