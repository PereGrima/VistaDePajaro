library(fBasics)
data("anscombe")

library(L1pack)
#x = c(2, 4, 6, 8, 10)
#y = c(1.8, 4.2, 5.8, 8.2, 14)
##y = c(1.9, 4.1, 5.9, 8.1, 14)
x = anscombe$x3
y = anscombe$y3
out = lad(y ~ x)
plot(x, y)
abline(out$coefficients[1], out$coefficients[2], col = "blue")
out
