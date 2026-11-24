#Topic 4:Sampling distributions and Central Limit Theorem
set.seed(2)
pop <- rexp(200000, rate=1/2)
for(n in c(5,40)) { m <- replicate(5000, mean(sample(pop,n))); print(c(n,mean(m),sd(m))) }
means <- replicate(1000, mean(rexp(40, rate = 0.5)))
sampling_distribution <- data.frame(
  Sample_Size_n = integer(),
  Sample_Mean = numeric(),
  Sample_SD = numeric()
)

for (n in c(5, 40)) {
  m <- replicate(5000, mean(sample(pop, n)))
  print(c(n, mean(m), sd(m))) 
  sampling_distribution <- rbind(
    sampling_distribution ,
    data.frame(Sample_Size_n = n, Sample_Mean = mean(m), Sample_SD = sd(m))
  )
}
write.csv(sampling_distribution , "Sampling_Distributions.csv", row.names = FALSE)

hist(means, probability = TRUE, col = "mediumseagreen",
     main = "Topic 4: CLT Sampling Distribution (n=40)", xlab = "Sample Mean")
