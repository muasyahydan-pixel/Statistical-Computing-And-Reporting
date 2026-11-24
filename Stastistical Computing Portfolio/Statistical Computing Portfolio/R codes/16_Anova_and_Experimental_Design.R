#Topic 16:ANOVA and experimental design
a <- c(70,72,68,75); b <- c(78,80,77,82); c <- c(65,67,70,66)
group <- factor(rep(c('A','B','C'), each=4))
score <- c(a,b,c); fit <- aov(score ~ group)
summary(fit); TukeyHSD(fit)
df <- data.frame(
  val = c(rnorm(30, 20, 3), rnorm(30, 25, 3), rnorm(30, 22, 3)),
  grp = rep(c("A", "B", "Control"), each = 30))
  anova_model <- aov(val ~ grp, data = df)
  anova_table <- as.data.frame(summary(anova_model)[[1]])
  anova_table$Source <- trimws(rownames(anova_table))
  anova_table <- anova_table[, c("Source", "Df", "Sum Sq", "Mean Sq", "F value", "Pr(>F)")]
  write.csv(anova_table, "Topic_16_ANOVA_Results.csv", row.names = FALSE)
  
boxplot(val ~ grp, data = df, col = c("lightblue", "lightgreen", "pink"),
        main = "Topic 16: ANOVA Group Means")
