library(latex2exp)

png(file="R2_02.png",width=950, height=850, res = 300)

t= 0.85
#x = c(160, 165, 170, 175, 180)
#y = c(63, 68, 72, 70, 72)
x = c(160)
y = c(63)

par(mar = c(2.2, 3.1, 1.5, 2), family = "serif")
plot(x, y, xlim = c(150, 190), ylim = c(60, 75), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.8, tck=-0.02, at=seq(150, 190, 5), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(60, 75, 5), cex.axis = t, las = 1)
#grid(8, 15, col = "lightgray", lty = "dotted")
points(160, 65, pch = 1, col = "red")
points(160, 69, pch = 1, col = "red")
mtext('Estatura (cm)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
mtext(expression("Peso (kg)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")
text(171, 63, TeX("$ y_i $: Valor real de Y"), cex = t, xpd = NA)
text(174, 65, TeX("$ hat(y)_i $: Valor estimado de Y"), cex = t, xpd = NA)
text(180, 68.2, TeX("Recta $ y = bar(y) $"), cex = t, xpd = NA)
text(184, 71, TeX("Recta \najustada"), cex = t, xpd = NA)
text(192, 69, TeX("$ bar(y) $"), cex = t, xpd = NA)

lines(c(160, 160), c(65, 69), lty = 3, lwd = 3, col = "darkgreen")
lines(c(160, 160), c(65, 63), lty = 3, lwd = 3, col = "red")

xx = c(151, 190.5)
yy = c(69, 69)
lines(xx, yy, type="l", lwd=0.75, xpd = NA)
# 
# x1 = c(160, 160)
# y1 = c(63, 69)
# lines(x1, y1, lty = 2)
# text(162.3, 66, "-6", cex=t)
# 
# x2 = c(165, 165)
# y2 = c(68, 69)
# lines(x2, y2, lty = 2)
# text(167.67, 68.2, "-1", cex=t)
# 
# x3 = c(170, 170)
# y3 = c(72, 69)
# lines(x3, y3, lty = 2)
# text(172, 70.5, "3", cex=t)
# 
# x4 = c(175, 175)
# y4 = c(70, 69)
# lines(x4, y4, lty = 2)
# text(177, 69.8, "1", cex=t)
# 
# x5 = c(180, 180)
# y5 = c(72, 69)
# lines(x5, y5, lty = 2)
# text(182, 70.5, "3", cex=t)

#####################

# par(mar = c(2.2, 3.1, 1.5, 2))
# plot(x, y, xlim = c(150, 190), ylim = c(60, 75), xlab="", ylab="", pch = 19, col = "red", 
#      cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
# axis(side=1, padj=-1.8, tck=-0.02, at=seq(150, 190, 5), cex.axis = t)
# axis(side=2, hadj=0.1, tck=-0.02, at=seq(60, 75, 5), cex.axis = t, las = 1)
# grid(8, 15, col = "lightgray", lty = "dotted")
# 
# mtext('Estatura (cm)', side=1, line=1, cex=t-0.1, las=1, family = "sans")
# mtext(expression("Peso (kg)"), side=2, line=1.5, cex=t-0.1, las=0, family = "sans")
# text(170, 76, TeX("$ Q_R = 2^2+1^2+3^2+1^2+1^2=16$"), cex = t, xpd = NA)

xx = c(152, 184)
yy = c(1+0.4*xx[1], 1+0.4*xx[2])
lines(xx, yy, type="l", lwd=0.75)

# x1 = c(160, 160)
# y1 = c(63, 65)
# lines(x1, y1, lty = 2)
# text(162, 64.2, "-2", cex=t)
# 
# x2 = c(165, 165)
# y2 = c(68, 67)
# lines(x2, y2, lty = 2)
# text(163, 67.6, "1", cex=t)
# 
# x3 = c(170, 170)
# y3 = c(72, 69)
# lines(x3, y3, lty = 2)
# text(172, 71, "3", cex=t)
# 
# x4 = c(175, 175)
# y4 = c(70, 71)
# lines(x4, y4, lty = 2)
# text(177.5, 70.7, "-1", cex=t)
# 
# x5 = c(180, 180)
# y5 = c(72, 73)
# lines(x5, y5, lty = 2)
# text(182.5, 72.7, "-1", cex=t)

dev.off()
