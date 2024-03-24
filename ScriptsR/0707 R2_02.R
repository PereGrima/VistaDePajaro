#setwd("C:/Users/pgrim/Dropbox/Libro Respuestas 7")
t = 0.85
x = c(160, 165, 170, 175, 180)
y = c(63, 68, 72, 70, 72)
png(file="0707 R2_02.png",width=1400, height=650, res = 300)
par(mfrow=c(1,2), mar=c(1.8, 2.5, 0.5, 0.5), xaxs="i", yaxs="i", family = "serif")

plot(x,y, las=1, ylim = c(60, 75), xlim = c(150, 190), xlab="", ylab="", pch = 19, col ="red", cex = t-0.1, xaxt = "n", yaxt = "n")
grid(8, 15, col = "lightgray", lty = "dotted")
axis(side=1, at=seq(150, 190, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
axis(side=2, at=seq(60, 75, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
mtext('Estatura (cm)', side=1, line=0.9, cex=t-0.05, las=1, family = "serif")
mtext('Peso (kg)', side=2, line=1.3, cex=t-0.05, las=0, family = "serif")
xx = c(151, 189)
yy = c(69, 69)
lines(xx, yy, type="l", lwd=1.3)


plot(x,y, las=1, ylim = c(60, 75), xlim = c(150, 190), xlab="", ylab="", pch = 19, col ="red", cex = t-0.1, xaxt = "n", yaxt = "n")
grid(8, 15, col = "lightgray", lty = "dotted")
axis(side=1, at=seq(150, 190, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
axis(side=2, at=seq(60, 75, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
mtext('Estatura (cm)', side=1, line=0.9, cex=t-0.05, las=1, family = "serif")
mtext('Peso (kg)', side=2, line=1.3, cex=t-0.05, las=0, family = "serif")
xx = c(151, 189)
yy = c(69, 69)
lines(xx, yy, type="l", lwd=1.3)

x1 = c(160, 160)
y1 = c(63, 69)
lines(x1, y1, lty = 2)
text(162.3, 66, "-6", cex=t)

x2 = c(165, 165)
y2 = c(68, 69)
lines(x2, y2, lty = 2)
text(167.67, 68.2, "-1", cex=t)

x3 = c(170, 170)
y3 = c(72, 69)
lines(x3, y3, lty = 2)
text(172, 70.5, "3", cex=t)

x4 = c(175, 175)
y4 = c(70, 69)
lines(x4, y4, lty = 2)
text(177, 69.8, "1", cex=t)

x5 = c(180, 180)
y5 = c(72, 69)
lines(x5, y5, lty = 2)
text(182, 70.5, "3", cex=t)

dev.off()





