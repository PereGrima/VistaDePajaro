library(latex2exp)

png(file="polinomica_03.png",width=1900, height=850, res = 300)

t= 0.85
x = c(160, 165, 170, 175, 180)
y = c(63, 68, 72, 70, 72)

par(mfrow=c(1,2), mar = c(2.2, 3.1, 1.5, 2), family = "serif")

plot(x, y, xlim = c(150, 190), ylim = c(60, 75), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.8, tck=-0.02, at=seq(150, 190, 5), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(60, 75, 5), cex.axis = t, las = 1)
grid(8, 15, col = "lightgray", lty = "dotted")

mtext(expression(italic(paste("y = b"[0]," + b"[1], "x"))), side=3, line=0.25, cex=t+0.1, las=1)
mtext('Estatura (cm)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
mtext(expression("Peso (kg)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")

fit = lm(y ~ x)
b0 = summary(fit)$coefficients[1,1]
b1 = summary(fit)$coefficients[2,1]
xx = seq(155, 185, 0.1) 
yy = b0 + b1*xx
lines(xx, yy)

text(178, 62, expression(paste("R"^2, "= 71.43 %")), cex = t+0.1)

###################

plot(x, y, xlim = c(150, 190), ylim = c(60, 75), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.8, tck=-0.02, at=seq(150, 190, 5), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(60, 75, 5), cex.axis = t, las = 1)
grid(8, 15, col = "lightgray", lty = "dotted")

mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2))), side=3, line=0.25, cex=t+0.1, las=1)
mtext('Estatura (cm)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
mtext(expression("Peso (kg)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")

fit = lm(y ~ x + I(x^2))
b0 = summary(fit)$coefficients[1,1]
b1 = summary(fit)$coefficients[2,1]
b2 = summary(fit)$coefficients[3,1]
xx = seq(155, 185, 0.1) 
yy = b0 + b1*xx + b2*xx^2
lines(xx, yy)

text(178, 62, expression(paste("R"^2, "= 89.80 %")), cex = t+0.1)


# plot(x,y, las=1, ylim = c(0,15), xlim = c(0, 15), xlab="", ylab="", pch = 19, col ="red", cex = t-0.15, xaxt = "n", yaxt = "n")
# mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2, " + ", "b"[3], "x"^3))), side=3, line=0.5, cex=t, las=1)
# grid(15, 15, col = "lightgray", lty = "dotted")
# axis(side=1, at=seq(0, 15, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
# axis(side=2, at=seq(0, 15, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
# mtext('X', side=1, line=1, cex=t-0.05, las=1, family = "serif")
# mtext('Y', side=2, line=1.4, cex=t-0.05, las=1, family = "serif")
# xx = seq(3.5, 13.2, 0.01)
# yy = -32 + 13.7*xx - 1.46*xx^2 + 0.0521*xx^3
# lines(xx, yy, type="l", lwd=1.3)
# text(11,5, expression(italic(paste("  R"^2, "= 94.26 %"))))
# text(10.5,3, expression(italic(paste("R"^2,"-aj.", "= 77.04 %"))))
# 
# plot(x,y, las=1, ylim = c(0, 15), xlim = c(0, 15), xlab="", ylab="", pch = 19, col ="red", cex = t-0.1, xaxt = "n", yaxt = "n")
# mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2, " + ", "b"[3], "x"^3, " +", "b"[4], "x"^4))), side=3, line=0.5, cex=t, las=1)
# grid(15, 15, col = "lightgray", lty = "dotted")
# axis(side=1, at=seq(0, 15, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
# axis(side=2, at=seq(0, 15, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
# mtext('X', side=1, line=0.9, cex=t-0.05, las=1, family = "serif")
# mtext('Y', side=2, line=1.3, cex=t-0.05, las=0, family = "serif")
# xx = seq(3, 13.2, 0.01)
# yy = 85 - 55.208333*xx + 12.84375*xx^2 - 1.197917*xx^3 + 0.0390625*xx^4
# lines(xx, yy, type="l", lwd=1.3)
# text(11,5, expression(italic(paste("  R"^2, "= 100 %"))))
# text(10.5,3, expression(italic(paste("R"^2,"-aj.", "=***"))))

dev.off()





