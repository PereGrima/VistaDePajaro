setwd("C:/Users/pgrim/Dropbox/Libro Respuestas 7")
t = 0.85
x = c(4, 6, 8, 10, 12)
y = c(3, 8, 12, 10, 12)
png(file="0709 R2Ajustado.png",width=1400, height=1400, res = 300)
par(mfrow=c(2,2), mar=c(1.8, 2.5, 2.5, 0.5), xaxs="i", yaxs="i", family = "serif")

plot(x,y, las=1, ylim = c(0,15), xlim = c(0, 15), xlab="", ylab="", pch = 19, col ="red", cex = t-0.15, xaxt = "n", yaxt = "n")
mtext(expression(italic(paste("y = b"[0]," + b"[1], "x"))), side=3, line=0.5, cex=t, las=1)
grid(15, 15, col = "lightgray", lty = "dotted")
axis(side=1, at=seq(0, 15, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
axis(side=2, at=seq(0, 15, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
mtext('X', side=1, line=1, cex=t-0.05, las=1, family = "serif")
mtext('Y', side=2, line=1.4, cex=t-0.05, las=1, family = "serif")
xx = c(0.5, 13.5)
yy = c(1+1*xx[1], 1+1*xx[2])
lines(xx, yy, type="l", lwd=1.3)
text(11,5, expression(italic(paste("  R"^2, "= 71.43 %"))))
text(10.5,3, expression(italic(paste("R"^2,"-aj.", "= 61.90 %"))))

plot(x,y, las=1, ylim = c(0, 15), xlim = c(0, 15), xlab="", ylab="", pch = 19, col ="red", cex = t-0.1, xaxt = "n", yaxt = "n")
mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2))), side=3, line=0.5, cex=t, las=1)
grid(15, 15, col = "lightgray", lty = "dotted")
axis(side=1, at=seq(0, 15, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
axis(side=2, at=seq(0, 15, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
mtext('X', side=1, line=0.9, cex=t-0.05, las=1, family = "serif")
mtext('Y', side=2, line=1.3, cex=t-0.05, las=0, family = "serif")
xx = seq(3, 14.5, 0.01)
yy = -11 + 4.43*xx - 0.214*xx^2
lines(xx, yy, type="l", lwd=1.3)
text(11,5, expression(italic(paste("  R"^2, "= 89.80 %"))))
text(10.5,3, expression(italic(paste("R"^2,"-aj.", "= 79.59 %"))))

plot(x,y, las=1, ylim = c(0,15), xlim = c(0, 15), xlab="", ylab="", pch = 19, col ="red", cex = t-0.15, xaxt = "n", yaxt = "n")
mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2, " + ", "b"[3], "x"^3))), side=3, line=0.5, cex=t, las=1)
grid(15, 15, col = "lightgray", lty = "dotted")
axis(side=1, at=seq(0, 15, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
axis(side=2, at=seq(0, 15, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
mtext('X', side=1, line=1, cex=t-0.05, las=1, family = "serif")
mtext('Y', side=2, line=1.4, cex=t-0.05, las=1, family = "serif")
xx = seq(3.5, 13.2, 0.01)
yy = -32 + 13.7*xx - 1.46*xx^2 + 0.0521*xx^3
lines(xx, yy, type="l", lwd=1.3)
text(11,5, expression(italic(paste("  R"^2, "= 94.26 %"))))
text(10.5,3, expression(italic(paste("R"^2,"-aj.", "= 77.04 %"))))

plot(x,y, las=1, ylim = c(0, 15), xlim = c(0, 15), xlab="", ylab="", pch = 19, col ="red", cex = t-0.1, xaxt = "n", yaxt = "n")
mtext(expression(italic(paste("y = b"[0]," + b"[1], "x + ", "b"[2], "x"^2, " + ", "b"[3], "x"^3, " +", "b"[4], "x"^4))), side=3, line=0.5, cex=t, las=1)
grid(15, 15, col = "lightgray", lty = "dotted")
axis(side=1, at=seq(0, 15, 5), padj=-2.1, tck=-0.03, cex.axis=t-0.15, family = "serif")
axis(side=2, at=seq(0, 15, 5), hadj=0.15, tck=-0.03, cex.axis=t-0.15, las=1, family = "serif")
mtext('X', side=1, line=0.9, cex=t-0.05, las=1, family = "serif")
mtext('Y', side=2, line=1.3, cex=t-0.05, las=0, family = "serif")
xx = seq(3, 13.2, 0.01)
yy = 85 - 55.208333*xx + 12.84375*xx^2 - 1.197917*xx^3 + 0.0390625*xx^4
lines(xx, yy, type="l", lwd=1.3)
text(11,5, expression(italic(paste("  R"^2, "= 100 %"))))
text(10.5,3, expression(italic(paste("R"^2,"-aj.", "=***"))))

dev.off()





