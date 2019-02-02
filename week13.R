# #Q1
# qchisq(0.99, 29)
# 
# #Q2
# data <- c(rt(100,10))
# plot(data,dt(data,10))

#HW
metadata <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE, fileEncoding = "euc-kr")
data09 <- c(as.numeric(metadata$X09.10))

print(data09)

x <- data09
y <- dnorm(x,mean(x),sd(x))

plot(x,y,xlab = "number of people", ylab = "probability")
