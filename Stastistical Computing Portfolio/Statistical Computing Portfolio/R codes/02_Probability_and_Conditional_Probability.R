#Topic 2:Probability and Conditional Probability
set.seed(42)
a <- sample(1:6, 100000, replace=TRUE); b <- sample(1:6,100000,replace=TRUE)
event <- a+b >= 10; given <- a==4
mean(event); mean(event[given])
probs<-c(mean(event),mean(event[given]))
probs_df<-data.frame(
  Event=c("p(a+b>=10)","p(a+b>=10|a=4"),
  probability=probs
)
write.csv(
  probs_df,
  "Probability_Results.csv",
  row.names=FALSE
)
barplot(probs, 
        names.arg = c("P(A+B>=10)", "P(A+B>=10|A=4)"),
        col = c("steelblue", "orange"), main = " Simulated Probabilities")
