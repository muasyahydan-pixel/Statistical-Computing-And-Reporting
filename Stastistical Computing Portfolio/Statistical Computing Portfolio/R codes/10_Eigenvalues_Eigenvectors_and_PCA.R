#Topic 10:Eigenvalues, eigenvectors and PCA
X <- data.frame(x=c(2,3,4,5,6,7), y=c(3,4,5,7,8,9))
p <- prcomp(X, scale.=TRUE)
summary(p); p$rotation; p$x
X <- matrix(rnorm(400), ncol = 4)
pca <- prcomp(X, scale. = TRUE)
eig_vals <- pca$sdev^2
var_explained <- eig_vals / sum(eig_vals)
pca_results <- data.frame(
  Principal_Component = paste0("PC", 1:length(eig_vals)),
  Eigenvalue = eig_vals,
  Std_Deviation = pca$sdev,
  Variance_Explained = var_explained,
  Cumulative_Variance = cumsum(var_explained)
)
write.csv(pca_results, "Topic_10_PCA_Results.csv", row.names = FALSE)

screeplot(pca, type = "lines", main = "Topic 10: PCA Scree Plot")
