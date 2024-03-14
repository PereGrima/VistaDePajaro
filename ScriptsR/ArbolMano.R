library(latex2exp)

dataArbol <- read.csv2("datosArboles.csv")
dataMano <-  read.csv2("lineaMano.csv")

xArbol = as.numeric(dataArbol$Girth.in.)
yArbol = as.numeric(dataArbol$Vol.ft3.)
xMano = as.numeric(dataMano$Long_linea_mano)
yMano = as.numeric(dataMano$Edad_al_morir)

png(file="ArbolMano.png",width=1800, height=900, res = 300)

par(mfrow = c(1, 2), mar = c(2.2, 2.6, 1.1, 1), family = "serif")
plot(xArbol, yArbol, xlim = c(6, 22), ylim = c(0, 90), xlab="", ylab="", pch = 19, col = "red", 
     cex = 1, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-1.5, tck=-0.02, at=seq(6, 22, 2), cex.axis = 0.9)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 90, 10), cex.axis = 0.9, las = 1)
axis(side=2, hadj=-0.6, tck=-0.02, at = 0, cex.axis = 0.9, las = 1)

mtext('Logitud circunferencia (pies)', side=1, line=1.1, cex=0.9, las=1, family = "serif")
mtext(expression("Volumen de madera (pies" ^ "  3", "                                              )"), 
      side=2, line=1.5, cex=0.9, las=0, family = "serif")
text(14, 95, TeX("$ Y = -36.94 + 5.066 \\cdot X$"), xpd = NA)

abline(lm(yArbol~xArbol), col = "black")
#####################

par(mar = c(2.2, 2.5, 1.1, 1))
plot(xMano, yMano, xlim = c(4, 14), ylim = c(10, 100), xlab="", ylab="", pch = 19, col = "red", 
     cex = 1, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-1.5, tck=-0.02, at=seq(4, 14, 2), cex.axis = 0.9)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 90, 10), cex.axis = 0.9, las = 1)
axis(side=2, hadj=0.5, tck=-0.02, at=100, cex.axis = 0.9, las = 1)

mtext('Longitud línea mano (cm)', side=1, line=1.1, cex=0.9, las=1, family = "serif")
mtext('Edad al morir (año redondeado)', side=2, line=1.5, cex=0.9, las=0, family = "serif")
text(9, 105, TeX("$ Y = 79.23 - 1.367 \\cdot X$"), xpd = NA)

abline(lm(yMano~xMano), col = "black")


dev.off()
