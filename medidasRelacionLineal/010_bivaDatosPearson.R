library(alr4)
data(Heights)

yPearson = as.numeric(Heights$dheight)
xPearson = as.numeric(Heights$mheight)

png(file="010_bivaDatosPearson.png",width=1900, height=950, res = 300)

t= 0.8
par(mar = c(2, 10.5, 0.5, 8), family = "serif") # sumo 7.5
plot(xPearson, yPearson, xlim = c(54, 74), ylim = c(54, 74), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.02, at=seq(54, 74, 2), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(54, 74, 2), cex.axis = t, las = 1)
axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('Estatura de la madre (pulgadas)', side=1, line=1, cex=t, las=1, family = "sans")
mtext('Estatura de la hija (pulgadas)', side=2, line=1.5, cex=t, las=0, family = "sans")

#abline(lm(yPearson~xPearson), col = "black")

dev.off()

