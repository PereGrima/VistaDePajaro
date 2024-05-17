library(fBasics)
data("anscombe")

library(latex2exp)

png(file="040_anscombe.png",width=1900, height=1400, res = 300) # height=1700


t= 0.95

par(mfrow=c(2,2), mar = c(2.7, 6, 0.4, 2), family = "serif") # mar = c(2.7, 3.1, 0.4, 2)

plot(anscombe$x1, anscombe$y1, xlim = c(2, 20), ylim = c(2, 14), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.015, at=seq(2, 20, 4), cex.axis = t)
axis(side=2, hadj=-0.4, tck=-0.015, at=seq(2, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0.3, tck=-0.015, at=seq(10, 14, 2), cex.axis = t, las = 1)

mtext(expression(X[1]), side=1, line=1.3, cex=t-0.1, las=1, family = "sans")
mtext(expression(Y[1]), side=2, line=1.5, cex=t-0.1, las=0, family = "sans", las=2)

abline(lm(anscombe$y1 ~ anscombe$x1), col = "blue")

# ###################

par(mar = c(2.7, 2, 0.4, 6), family = "serif") # mar = c(2.7, 3.1, 0.4, 2)

plot(anscombe$x2, anscombe$y2, xlim = c(2, 20), ylim = c(2, 14), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.015, at=seq(2, 20, 4), cex.axis = t)
axis(side=2, hadj=-0.4, tck=-0.015, at=seq(2, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0.3, tck=-0.015, at=seq(10, 14, 2), cex.axis = t, las = 1)

mtext(expression(X[2]), side=1, line=1.3, cex=t-0.1, las=1, family = "sans")
mtext(expression(Y[2]), side=2, line=1.5, cex=t-0.1, las=0, family = "sans", las=2)

abline(lm(anscombe$y2 ~ anscombe$x2), col = "blue")

# ###################

par(mar = c(2.3, 6, 0.4, 2), family = "serif") # mar = c(2.7, 3.1, 0.4, 2)

plot(anscombe$x3, anscombe$y3, xlim = c(2, 20), ylim = c(2, 14), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.015, at=seq(2, 20, 4), cex.axis = t)
axis(side=2, hadj=-0.4, tck=-0.015, at=seq(2, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0.3, tck=-0.015, at=seq(10, 14, 2), cex.axis = t, las = 1)

mtext(expression(X[3]), side=1, line=1.3, cex=t-0.1, las=1, family = "sans")
mtext(expression(Y[3]), side=2, line=1.5, cex=t-0.1, las=0, family = "sans", las=2)

abline(lm(anscombe$y3 ~ anscombe$x3), col = "blue")

# ###################

par(mar = c(2.3, 2, 0.4, 6), family = "serif") # mar = c(2.7, 3.1, 0.4, 2)

plot(anscombe$x4, anscombe$y4, xlim = c(2, 20), ylim = c(2, 14), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.015, at=seq(2, 20, 4), cex.axis = t)
axis(side=2, hadj=-0.4, tck=-0.015, at=seq(2, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0.3, tck=-0.015, at=seq(10, 14, 2), cex.axis = t, las = 1)

mtext(expression(X[4]), side=1, line=1.3, cex=t-0.1, las=1, family = "sans")
mtext(expression(Y[4]), side=2, line=1.5, cex=t-0.1, las=0, family = "sans", las=2)

abline(lm(anscombe$y4 ~ anscombe$x4), col = "blue")

dev.off()

