library(L1pack)
library(fastmatrix)
library(latex2exp)

windowsFonts(A = windowsFont("Palatino"))

png(file="residuosMinimosCuadrados.png",width=1800, height=950, res = 300)

par(mfrow = c(1, 2), mar = c(2, 2, 1.1, 0.5), family = "serif")

x = c(2, 4, 6, 8, 10)
y = c(3, 8, 11, 12, 11)

plot(x, y, xlim = c(0, 13), ylim = c(0, 15), xlab="", ylab="", pch = 19, col = "red", 
     cex = 1, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(13, 15)

axis(side=1, padj=-1.5, tck=-0.02, at=seq(0, 13, 2), cex.axis = 0.9)
axis(side=2, hadj=-0.5, tck=-0.02, at=seq(0, 8, 2), cex.axis = 0.9, las = 1)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 15, 2), cex.axis = 0.9, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=0.9, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=0.9, las=0, family = "serif")
text(6.5, 15.7, "Minimiza suma en valor absoluto", family = "A", cex = 0.85, xpd = NA)

out2 = lad(y~x)
abline(out2$coefficients[1], out2$coefficients[2])

segments(2, 3, 2, 6, col = "grey")
segments(6, 11, 6, 10, col = "grey")
segments(10, 11, 10, 14, col = "grey")
text(1.5, 4.5, "-3")
text(5.7, 10.5, "1")
text(9.5, 12.5, "-3")
     
##################################
par(mar = c(2, 2.5, 1.1, 0))

x = c(2, 4, 6, 8, 10)
y = c(3, 8, 11, 12, 11)

plot(x, y, xlim = c(0, 13), ylim = c(0, 15), xlab="", ylab="", pch = 19, col = "red", 
     cex = 1, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(13, 15)

axis(side=1, padj=-1.5, tck=-0.02, at=seq(0, 13, 2), cex.axis = 0.9)
axis(side=2, hadj=-0.5, tck=-0.02, at=seq(0, 8, 2), cex.axis = 0.9, las = 1)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 15, 2), cex.axis = 0.9, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=0.9, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=0.9, las=0, family = "serif")
text(6.5, 15.7, "Minimiza suma de cuadrados", xpd = NA)

out = lm(y~x)
abline(out$coefficients[1], out$coefficients[2])

segments(2, 3, 2, 5, col = "grey")
segments(4, 8, 4, 7, col = "grey")
segments(6, 11, 6, 9, col = "grey")
segments(8, 12, 8, 11, col = "grey")
segments(10, 11, 10, 13, col = "grey")
text(1.5, 3.7, "-2")
text(3.5, 7.5, "1")
text(5.5, 10, "2")
text(7.7, 11.5, "1")
text(9.5, 11.7, "-2")

dev.off()
