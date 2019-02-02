#1
#pbinom(2, 10, 2/5, FALSE)

#2
# p <-0.001
# while (pbinom(15, 100, p,TRUE) >= 0.2 ) {
#   p <- p + 0.0001
# }
# print(p)
# 
# #3
# dpois(3, (6/28)*7)


#Q1
dpois(100, 30)

#Q2
si <- dbinom(16, 30, 0.32)
ro <- dbinom(16, 30, 0.76)
pa <- dbinom(16, 30, 0.66)

v <- c(si, ro, pa)
names(v) <- c("Scissors", "Rock", "Papers")

dpois(100, 30)
sort(v, decreasing = TRUE)