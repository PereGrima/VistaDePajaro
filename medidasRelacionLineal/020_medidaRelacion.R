library(latex2exp)
library(plotrix)

png(file="020_medidaRelacion.png",width=1900, height=1500, res = 300)


t= 0.95
dataHooker <- read.csv2("Hooker.csv")
xHooker = dataHooker$Temp
yHooker = dataHooker$Pres

par(mfrow=c(2,2), mar = c(2.7, 6, 1.2, 2), family = "serif") #mar = c(2.7, 6, 0.4, 2)

plot(xHooker, yHooker, xlim = c(175, 215), ylim = c(14, 30), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.02, at=seq(175, 215, 10), cex.axis = t)
axis(side=2, hadj=0.25, tck=-0.02, at=seq(14, 30, 2), cex.axis = t, las = 1)

mtext('Temperatura (ºF)', side=1, line=1.2, cex=t-0.1, las=1, family = "serif")
mtext('Presión (mm Hg)', side=2, line=1.7, cex=t-0.1, las=0, family = "serif")

draw.circle(179, 28.5, 2.5)
text(179, 28.5, "1")
# 
# ###################
# 
dataArbol <- read.csv2("datosArboles.csv")
xArbol = as.numeric(dataArbol$Girth.in.)
yArbol = as.numeric(dataArbol$Vol.ft3.)

par(mar = c(2.7, 2, 1.2, 6), family = "serif")

plot(xArbol, yArbol, xlim = c(6, 22), ylim = c(0, 90), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-1.5, tck=-0.02, at=seq(6, 22, 3), cex.axis = t)
axis(side=2, hadj=0.25, tck=-0.02, at=seq(10, 90, 10), cex.axis = t, las = 1)
axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('Logitud circunferencia (pies)', side=1, line=1.2, cex=t-0.1, las=1, family = "serif")
mtext(expression("Volumen madera (pies" ^ "3", "                                      )"), 
      family = "serif", side=2, line=1.7, cex=t-0.1, las=0) 

draw.circle(7.6, 81.5, 1)
text(7.6, 81.5, "2")
# 
# ###################
# 

xArbol = as.numeric(dataArbol$Height.ft.)
yArbol = as.numeric(dataArbol$Vol.ft3.)

par(mar = c(2.3, 6, 1.2, 2), family = "serif")

plot(xArbol, yArbol, xlim = c(60, 90), ylim = c(0, 90), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-1.5, tck=-0.02, at=seq(60, 90, 5), cex.axis = t)
axis(side=2, hadj=0.25, tck=-0.02, at=seq(10, 90, 10), cex.axis = t, las = 1)
axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('Altura del árbol (pies)', side=1, line=1.2, cex=t-0.1, las=1, family = "serif")
mtext(expression("Volumen madera (pies" ^ "3", "                                      )"), 
      family = "serif", side=2, line=1.7, cex=t-0.1, las=0)

draw.circle(63, 81.5, 1.875)
text(63, 81.5, "3")

###################

dataMano <-  read.csv2("lineaMano.csv")
xMano = as.numeric(dataMano$Long_linea_mano)
yMano = as.numeric(dataMano$Edad_al_morir)

par(mar = c(2.3, 2, 1.2, 6), family = "serif")

plot(xMano, yMano, xlim = c(4, 14), ylim = c(10, 100), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-1.5, tck=-0.02, at=seq(4, 14, 2), cex.axis = t)
axis(side=2, hadj=0.25, tck=-0.02, at=seq(10, 90, 10), cex.axis = t, las = 1)
axis(side=2, hadj=0.45, tck=-0.02, at=100, cex.axis = t, las = 1)

mtext('Longitud línea mano (cm)', side=1.2, line=1, cex=t-0.1, las=1, family = "serif")
mtext('Edad al morir', side=2, line=1.7, cex=t-0.1, las=0, family = "serif")

draw.circle(5, 91,0.625)
text(5, 91, "4")


dev.off()

