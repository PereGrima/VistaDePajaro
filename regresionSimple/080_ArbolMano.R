library(latex2exp)

dataArbol <- read.csv2("datosArboles.csv")
dataMano <-  read.csv2("lineaMano.csv")

xArbol = as.numeric(dataArbol$Girth.in.)
yArbol = as.numeric(dataArbol$Vol.ft3.)
xMano = as.numeric(dataMano$Long_linea_mano)
yMano = as.numeric(dataMano$Edad_al_morir)

png(file="080_ArbolMano.png",width=1900, height=850, res = 300)

t= 0.75
par(mfrow = c(1, 2), mar = c(2.2, 3.1, 1.5, 2), family = "serif")
plot(xArbol, yArbol, xlim = c(6, 22), ylim = c(0, 90), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.02, at=seq(6, 22, 2), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(10, 90, 10), cex.axis = t, las = 1)
axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('X: Logitud circunferencia (pies)', side=1, line=1, cex=t+0.1, las=1, family = "serif")
mtext(expression("Y: Volumen de madera (pies" ^ "3", "                                               )"), 
      side=2, line=1.5, cex=t+0.1, las=0, family = "serif")
text(14, 96, TeX("$ Y = -36.94 + 5.066 \\cdot X$"), cex = t+0.15, xpd = NA)

#abline(lm(yArbol~xArbol), col = "black")
#####################

par(mar = c(2.2, 3.1, 1.5, 2))
plot(xMano, yMano, xlim = c(4, 14), ylim = c(10, 100), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.02, at=seq(4, 14, 2), cex.axis = t)
axis(side=2, hadj=-0, tck=-0.02, at=seq(10, 90, 10), cex.axis = t, las = 1)
axis(side=2, hadj=0.35, tck=-0.02, at=100, cex.axis = t, las = 1)

mtext('X: Longitud línea mano (cm)', side=1, line=1, cex=t+0.1, las=1, family = "serif")
mtext('Y: Edad al morir', side=2, line=1.7, cex=t+0.1, las=0, family = "serif")
text(9, 106, TeX("$ Y = 79.23 - 1.367 \\cdot X$"), cex = t+0.15, xpd = NA)

#abline(lm(yMano~xMano), col = "black")


dev.off()
