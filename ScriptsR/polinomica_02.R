library(latex2exp)

dataWind <- read.csv2("windMill.csv")

xWind = as.numeric(dataWind$Speed)
yWind = as.numeric(dataWind$DC_Output)
x1Wind = 1/xWind

png(file="polinomica_02.png",width=1900, height=850, res = 300)

t= 0.75
par(mfrow = c(1, 2), mar = c(2.2, 3.1, 1.5, 2), family = "serif")
plot(x1Wind, yWind, xlim = c(0.05, 0.45), ylim = c(0, 2.5), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.02, at=seq(0.05, 0.45, 0.05), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(0, 2.5, 0.5), cex.axis = t, las = 1)
#axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('1/Velocidad del viento (1/mph)', side=1, line=1, cex=t, las=1, family = "sans")
mtext(expression('Producción de electridad'), 
      side=2, line=1.5, cex=t, las=0, family = "sans")
text(14, 96, TeX("$ Y = -36.94 + 5.066 \\cdot X$"), cex = t+0.1, xpd = NA)

#abline(lm(yArbol~xArbol), col = "black")
#####################

par(mar = c(2.2, 3.1, 1.5, 2))
plot(x1Wind, yWind, xlim = c(0.05, 0.45), ylim = c(0, 2.5), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.02, at=seq(0.05, 0.45, 0.05), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(0, 2.5, 0.5), cex.axis = t, las = 1)
#axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('1/Velocidad del viento (1/mph)', side=1, line=1, cex=t, las=1, family = "sans")
mtext(expression('Producción de electridad'), 
      side=2, line=1.5, cex=t, las=0, family = "sans")
text(14, 96, TeX("$ Y = -36.94 + 5.066 \\cdot X$"), cex = t+0.1, xpd = NA)

fit = lm(yWind ~ x1Wind)
pred = predict(fit)
ix = sort(x1Wind, index.return=T)$ix
lines(x1Wind[ix], pred[ix])

#abline(lm(yWind~x1Wind), col = "black")


dev.off()
