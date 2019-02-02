library(MASS)
str(cats)
s <- summary(cats)

bdata <- c(47, 97)
names(bdata) <- c("Female","Male")
barplot(bdata, main = "Number of cats by sex", xlab = "sex", ylab = "number")

plot(cats$Bwt,cats$Hwt,xlab = "Body Weight(kg)",ylab = "Heart Weight(g)"
     ,main = "Heart Weight(g) by Body Weight(kg) of cats",col = "red"
     ,xlim = c(min(cats$Bwt),max(cats$Bwt)), ylim = c(min(cats$Hwt), max(cats$Hwt))
     , pch = "♥"
     )