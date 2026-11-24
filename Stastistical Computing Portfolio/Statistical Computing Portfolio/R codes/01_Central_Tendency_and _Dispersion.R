#Topic 1:Measures of Central Tendency and Dispersion
x <- c(45,52,60,60,68,75,90)
mean(x); median(x); names(which.max(table(x)))
var(x); sd(x); diff(range(x)); IQR(x)
quantile(x, c(.25,.75))
#summary statistics
results<-data.frame(
  mean=mean(x),
  median=median(x),
  Variance=var(x),
  standard_Deviation=sd(x))
results
#Export results
write.csv(
  results,
  "Summary_Statistics.csv",
  row.names=FALSE
)

#Data Visualization
boxplot(x,horizontal=TRUE,col="blue",main="Boxplot of Dataset x",xlab="values")
hist(x,main="Distribution of Scores",xlab="Scores",col="green")