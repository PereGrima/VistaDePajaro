tiempoPeso = read.csv2("tiempoPeso.csv")

ytiempoPeso = as.numeric(tiempoPeso$Peso)
xtiempoPeso = as.numeric(tiempoPeso$Tiempo)

png(file="050_tiempoPeso.png",width=1900, height=950, res = 300)

t= 0.8
par(mar = c(2, 10.5, 0.5, 8), family = "serif") # sumo 7.5
plot(xtiempoPeso, ytiempoPeso, xlim = c(120, 150), ylim = c(4.5, 7), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.015, at=seq(120, 150, 5), cex.axis = t)
axis(side=2, hadj=0.2, tck=-0.015, at=seq(4.5, 7, 0.5), cex.axis = t, las = 1)

mtext('Tiempo (días)', side=1, line=1, cex=t+0.05, las=1, family = "serif")
mtext('Peso (kg)', side=2, line=1.5, cex=t+0.05, las=0, family = "serif")

abline(lm(ytiempoPeso ~ xtiempoPeso), col = "blue")

dev.off()

