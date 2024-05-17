library(latex2exp)

x = c(1, 1, 4, 4)
y = c(2, 3, 4, 5)
out = lm(y~x)

t=0.8
png(file="050_residuosValorAbsoluto.png",width=1900, height=850, res = 300)

par(mfrow = c(1, 2), mar = c(2.2, 3.8, 1.5, 1.3), family = "serif")
plot(x, y, xlim = c(0, 6), ylim = c(0, 6), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(6, 6)

axis(side=1, padj=-2, tck=-0.02, at=seq(0, 6, 1), cex.axis = t)
axis(side=2, hadj=-1, tck=-0.02, at=seq(0, 6, 1), cex.axis = t, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=t+0.05, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t+0.05, las=0, family = "serif")
text(3, 6.3, TeX("$Y = 1 + X\\, ;  \\; \\; \\;  Y = 2.67 + 0.33X$"), cex =t+0.1, xpd = NA)

abline(1, 1)
abline(2.6666667, 0.3333333)
abline(out$coefficients[1], out$coefficients[2], col = "blue")

par(mar = c(2.2, 2.5, 1.5, 3)) # suma 5.5
plot(x, y, xlim = c(0, 6), ylim = c(0, 6), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(6, 6)

axis(side=1, padj=-2, tck=-0.02, at=seq(0, 6, 1), cex.axis = t)
axis(side=2, hadj=-1, tck=-0.02, at=seq(0, 6, 1), cex.axis = t, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=t+0.05, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t+0.05, las=0, family = "serif")
text(3, 6.3, TeX("$Y = 2.33 + 0.67X;  \\;    Y = 1.33 + 0.67X$"), cex = t+0.1, xpd = NA)

abline(2.333333, 0.666667)
abline(1.333333, 0.666667)
abline(out$coefficients[1], out$coefficients[2], col = "blue")

dev.off()
