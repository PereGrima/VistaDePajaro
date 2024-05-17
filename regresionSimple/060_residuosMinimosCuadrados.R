library(L1pack)
library(fastmatrix)
library(latex2exp)
library(L1pack)
library(fBasics)
data("anscombe")

png(file="060_residuosMinimosCuadrados.png",width=1900, height=1680, res = 300)

t= 1
par(mfrow=c(2,2), mar = c(3.2, 5, 1.4, 2), family = "serif")

x = c(2, 4, 6, 8, 10)
y = c(3, 8, 11, 12, 11)

plot(x, y, xlim = c(0, 13), ylim = c(0, 15), xlab="", ylab="", pch = 19, col = "red", 
     cex = 1, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(13, 15)

axis(side=1, padj=-1.5, tck=-0.02, at=seq(0, 13, 2), cex.axis = 0.9)
axis(side=2, hadj=-0.5, tck=-0.02, at=seq(0, 8, 2), cex.axis = 0.9, las = 1)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 15, 2), cex.axis = 0.9, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=t-0.15, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t-0.15, las=0, family = "serif")
text(6.5, 16, "Minimiza suma en valor absoluto", family = "serif", cex = t+0.1, xpd = NA)

out2 = lad(y~x)
abline(out2$coefficients[1], out2$coefficients[2])

segments(2, 3, 2, 6, col = "grey")
segments(6, 11, 6, 10, col = "grey")
segments(10, 11, 10, 14, col = "grey")
text(1.5, 4.5, "-3")
text(5.7, 10.5, "1")
text(9.5, 12.5, "-3")

text(5, 3, TeX("$\\sum$"), cex =t)
text(9, 3, "Valor absoluto = 7", cex =t)
text(5, 1.5, TeX("$\\sum$"), cex =t)
text(8.7, 1.5, "Cuadrados = 19", cex =t)

     
################################## 2
par(mar = c(3.2, 2, 1.4, 5), family = "serif") 

x = c(2, 4, 6, 8, 10)
y = c(3, 8, 11, 12, 11)

plot(x, y, xlim = c(0, 13), ylim = c(0, 15), xlab="", ylab="", pch = 19, col = "red", 
     cex = 1, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
grid(13, 15)

axis(side=1, padj=-1.5, tck=-0.02, at=seq(0, 13, 2), cex.axis = 0.9)
axis(side=2, hadj=-0.5, tck=-0.02, at=seq(0, 8, 2), cex.axis = 0.9, las = 1)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 15, 2), cex.axis = 0.9, las = 1)

mtext('Valores de X', side=1, line=1.1, cex=t-0.15, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t-0.15, las=0, family = "serif")
text(6.5, 16, "Minimiza suma de cuadrados", cex = t+0.1, xpd = NA)

out = lm(y~x)
abline(out$coefficients[1], out$coefficients[2], col = "blue")

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

text(5, 3, TeX("$\\sum$"), cex =t)
text(9, 3, "Valor absoluto = 8", cex =t)
text(5, 1.5, TeX("$\\sum$"), cex =t)
text(8.7, 1.5, "Cuadrados = 14", cex =t)


################################## 3
par(mar = c(2.3, 5, 1.9, 2), family = "serif") 

x = c(2, 4, 6, 8, 10, 12)
y = c(4, 5, 6, 7, 8, 13)

plot(x, y, xlim = c(0, 13), ylim = c(0, 15), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.015, at=seq(0, 13, 2), cex.axis = t)
axis(side=2, hadj=-0.4, tck=-0.015, at=seq(2, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0.3, tck=-0.015, at=seq(10, 14, 2), cex.axis = t, las = 1)
grid(13, 15)

mtext('Valores de X', side=1, line=1.1, cex=t-0.15, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t-0.15, las=0, family = "serif")
text(6.5, 16, "Minimiza suma de cuadrados", cex = t+0.1, xpd = NA)
text(5, 3, TeX("$\\sum$"), cex =t)
text(9, 3, "Valor absoluto = 3", cex =t)
text(5, 1.5, TeX("$\\sum$"), cex =t)
text(8.7, 1.5, "Cuadrados = 9", cex =t)

out = lad(y ~ x)
abline(out$coefficients[1], out$coefficients[2])

################################## 4
par(mar = c(2.3, 2, 1.9, 5), family = "serif") 

plot(x, y, xlim = c(0, 13), ylim = c(0, 15), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.015, at=seq(0, 13, 2), cex.axis = t)
axis(side=2, hadj=-0.4, tck=-0.015, at=seq(2, 8, 2), cex.axis = t, las = 1)
axis(side=2, hadj=0.3, tck=-0.015, at=seq(10, 14, 2), cex.axis = t, las = 1)
grid(13, 15)

mtext('Valores de X', side=1, line=1.1, cex=t-0.15, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.1, cex=t-0.15, las=0, family = "serif")
text(6.5, 16, "Minimiza suma de cuadrados", cex = t+0.1, xpd = NA)
text(4.5, 3, TeX("$\\sum$"), cex =t)
text(9, 3, "Valor absoluto = 5.71", cex =t)
text(4.5, 1.5, TeX("$\\sum$"), cex =t)
text(8.2, 1.5, "Cuadrados = 7.62", cex =t)

abline(lm(y ~ x), col = "blue")

# Si el valor anómalo es y=12 coinciden las dos sumas. 
# He buscado una condición compacta y elegante para que se dé esta igualdad 
# per no la he encontrado (cuaderno naranja).

dev.off()
