library(latex2exp)

x = c(2, 4, 6, 8, 10)
y = c(3, 8, 11, 12, 11)

png(file="040_residuosSuma.png",width=1900, height=850, res = 300)

t=0.8
par(mfrow = c(1, 2), mar = c(2.2, 3.8, 1.5, 1.3), family = "serif")
plot(x, y, xlim = c(0, 13), ylim = c(0, 13), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(13, 13)

axis(side=1, padj=-2, tck=-0.02, at=seq(0, 13, 2), cex.axis = t)
axis(side=2, hadj=-1, tck=-0.02, at=seq(0, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0, tck=-0.02, at=seq(10, 12, 2), cex.axis = t, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=t, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t, las=0, family = "serif")
text(6.5, 13.7, TeX("$ Y = 9$"), cex = t+0.1, xpd = NA)

abline(h=mean (y))

segments(2, 3, 2, 9, col = "grey")
segments(4, 8, 4, 9, col = "grey")
segments(6, 11, 6, 9, col = "grey")
segments(8, 12, 8, 9, col = "grey")
segments(10, 11, 10, 9, col = "grey")
text(1.5, 6.5, "-6")
text(3.5, 8.5, "-1")
text(5.7, 10, "2")
text(7.7, 10.5, "3")
text(9.7, 10, "2")

par(mar = c(2.2, 2.5, 1.5, 3)) # suma 5.5
plot(x, y, xlim = c(0, 13), ylim = c(0, 13), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(13, 13)

axis(side=1, padj=-1.5, tck=-0.02, at=seq(0, 13, 2), cex.axis = t)
axis(side=2, hadj=-0.5, tck=-0.02, at=seq(0, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 12, 2), cex.axis = t, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=t, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t, las=0, family = "serif")
text(6.5, 13.7, TeX("$ Y = 12 - 0.5X$"), xpd = NA, cex=t+0.1)

abline(12, -0.5)

segments(2, 3, 2, 11, col = "grey")
segments(4, 8, 4, 10, col = "grey")
segments(6, 11, 6, 9, col = "grey")
segments(8, 12, 8, 8, col = "grey")
segments(10, 11, 10, 7, col = "grey")
text(1.5, 7, "-8")
text(3.5, 9, "-2")
text(5.7, 10, "2")
text(7.7, 10, "4")
text(9.7, 10, "4")

dev.off()
