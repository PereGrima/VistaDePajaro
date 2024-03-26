library(latex2exp)

png(file="polinomica_04.png",width=1900, height=850, res = 300)

t= 0.85
x = c(160, 165, 170, 175, 180)
y = c(63, 68, 72, 70, 72)

par(mfrow=c(1,2), mar = c(2.2, 3.1, 1.5, 2), family = "serif")

plot(x, y, xlim = c(150, 190), ylim = c(60, 75), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.8, tck=-0.02, at=seq(150, 190, 5), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(60, 75, 5), cex.axis = t, las = 1)
grid(8, 15, col = "lightgray", lty = "dotted")

mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2, "+ b"[3], "x"^3))), side=3, line=0.25, cex=t+0.1, las=1)
mtext('Estatura (cm)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
mtext(expression("Peso (kg)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")

fit = lm(y ~ x + I(x^2) + I(x^3))
b0 = summary(fit)$coefficients[1,1]
b1 = summary(fit)$coefficients[2,1]
b2 = summary(fit)$coefficients[3,1]
b3 = summary(fit)$coefficients[4,1]
xx = seq(155, 185, 0.1) 
yy = b0 + b1*xx + b2*xx^2 + b3*xx^3
lines(xx, yy)

text(178, 62, expression(paste("R"^2, "= 94.26 %")), cex = t+0.1)

###################

plot(x, y, xlim = c(150, 190), ylim = c(60, 75), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.8, tck=-0.02, at=seq(150, 190, 5), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(60, 75, 5), cex.axis = t, las = 1)
grid(8, 15, col = "lightgray", lty = "dotted")

mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2, "+ b"[3], "x"^3, "+ b"[4], "x"^4))), side=3, line=0.25, cex=t+0.1, las=1)
mtext('Estatura (cm)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
mtext(expression("Peso (kg)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")

fit = lm(y ~ x + I(x^2) + I(x^3) + I(x^4))
b0 = summary(fit)$coefficients[1,1]
b1 = summary(fit)$coefficients[2,1]
b2 = summary(fit)$coefficients[3,1]
b3 = summary(fit)$coefficients[4,1]
b4 = summary(fit)$coefficients[5,1]
xx = seq(155, 185, 0.1) 
yy = b0 + b1*xx + b2*xx^2 + b3*xx^3 + b4*xx^4
lines(xx, yy)

text(178, 62, expression(paste("R"^2, "= 100 %")), cex = t+0.1)

dev.off()





