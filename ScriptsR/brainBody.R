library(latex2exp)
library(lattice)
library(latticeExtra)

png(file="brainBody.png",width=1900, height=850, res = 300)

brainBody = read.csv2("brainBodyWeight.csv")
  
t= 0.85

par(mfrow=c(1,2), mar = c(2.2, 3.1, 1.5, 2), family = "serif")
x = brainBody$body/1000
y = brainBody$brain/1000
plot(x, y, xlim = c(-0.3, 7), ylim = c(-0.3, 6), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.8, tck=-0.02, at=seq(0, 7, 1), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(0, 6, 1), cex.axis = t, las = 1)
grid(8, 15, col = "lightgray", lty = "dotted")

mtext('Peso del cuerpo (x1000 kg)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
mtext(expression("Peso del cerebro (x1000 g)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")
mtext("Escala normal", side=3, line=0.3, cex=t, las=0, family = "sans")

fit = lm(y ~ x)
b0 = summary(fit)$coefficients[1,1]
b1 = summary(fit)$coefficients[2,1]
xx = seq(155, 185, 0.1) 
yy = b0 + b1*xx
lines(xx, yy)



###################

x = log10(brainBody$body)
y = log10(brainBody$brain)

e1 = expression(10^-2)
e2 = expression(10^-1)
e3 = expression(10^0)
e4 = expression(10^1)
e5 = expression(10^2)
e6 = expression(10^3)
e7 = expression(10^4)
plot(x, y, xaxt = "n", yaxt = "n", pch = 19, col = "red", cex = t, ylim = c(-1, 4))
axis(side=1, at=seq(-2, 4, by=1), padj=-1.2, tck=-0.02, cex.axis=t-0.05, labels = c(e1, e2, e3, e4, e5, e6, e7))
axis(side=2, at=seq(-1, 4, by=1), hadj=0.5, tck=-0.03, cex.axis=t-0.05, labels = c(e2, e3, e4, e5, e6, e7), las =1)
abline(h = -1, lty = 2, col = "grey")
mtext("Escala logarítmica", side=3, line=0.3, cex=t, las=0, family = "sans")
mtext('Peso del cuerpo (kg)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
mtext(expression("Peso del cerebro (g)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")

for (i in -2:4) {
  abline(h = i, lty = 3, col = "grey")
  abline(v = i, lty = 3, col = "grey")
}

fit = lm(y ~ x)
b0 = summary(fit)$coefficients[1,1]
b1 = summary(fit)$coefficients[2,1]
xx = seq(-2, 4, 0.01) 
yy = b0 + b1*xx
lines(xx, yy)

dev.off()





