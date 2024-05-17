library(latex2exp)

dataWind <- read.csv2("windMill.csv")

xWind = as.numeric(dataWind$Speed)
yWind = as.numeric(dataWind$DC_Output)
x1Wind = 1/xWind

png(file="100_molinoViento.png",width=1900, height=850, res = 300)

t= 0.75
par(mfrow = c(1, 2), mar = c(2.2, 3.1, 1.5, 2), family = "serif")

par(mar = c(2.2, 3.1, 1.5, 2))
plot(xWind, yWind, xlim = c(2, 11), ylim = c(0, 2.5), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.02, at=seq(2, 11, 1), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(0, 2.5, 0.5), cex.axis = t, las = 1)
#axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('Velocidad del viento (mph)', side=1, line=1, cex=t+0.1, las=1, family = "serif")
mtext(expression('Producción de electridad'), 
      side=2, line=1.5, cex=t+0.1, las=0, family = "serif")
text(14, 96, TeX("$ Y = -36.94 + 5.066 \\cdot X$"), cex = t+0.1, xpd = NA)

fit = lm(yWind ~ xWind + I(xWind^2))
pred = predict(fit)
ix = sort(xWind, index.return=T)$ix
lines(xWind[ix], pred[ix], col = "blue")

####################################

plot(x1Wind, yWind, xlim = c(0.05, 0.45), ylim = c(0, 2.5), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.02, at=seq(0.05, 0.45, 0.05), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(0, 2.5, 0.5), cex.axis = t, las = 1)
#axis(side=2, hadj=-0.7, tck=-0.02, at = 0, cex.axis = t, las = 1)

mtext('1/Velocidad del viento (1/mph)', side=1, line=1, cex=t+0.1, las=1, family = "serif")
mtext(expression('Producción de electridad'), 
      side=2, line=1.5, cex=t+0.1, las=0, family = "serif")
text(14, 96, TeX("$ Y = -36.94 + 5.066 \\cdot X$"), cex = t+0.1, xpd = NA)

fit = lm(yWind ~ x1Wind)
pred = predict(fit)
ix = sort(x1Wind, index.return=T)$ix
lines(x1Wind[ix], pred[ix], col = "blue")

dev.off()
