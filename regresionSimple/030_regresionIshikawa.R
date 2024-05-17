library(latex2exp)
datos = read.csv2("regresionFuerzaBruta.csv")

png("030_regresionIshikawa.png", width=1800, height=750, res = 300)

par(mar = c(2, 6, 0.5, 14), family = "serif")

t=0.8
plot(datos$X, datos$Y, xlim = c(-6, 6), ylim = c(0, 60),
     xlab="", ylab="", pch = 19, col = "red",
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-2, tck=-0.02, at=seq(-6, 6, by = 2), cex.axis = t)
axis(side=2, hadj=-1, tck=-0.02, at=0, cex.axis = t, las = 1)
axis(side=2, hadj=0, tck=-0.02, at=seq(10, 60, 10), cex.axis = t, las = 1)
mtext('Valores de X', side=1, line=0.9, cex=t, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.3, cex=t, las=0, family = "serif")
grid()

q1x = quantile(datos$X, 0.25)
q3x = quantile(datos$X, 0.75)
q1y = quantile(datos$Y, 0.25)
q3y = quantile(datos$Y, 0.75)

qx = c(q1x, q3x) 
qy = c(q1y, q3y)

points(q1x, q1y, pch = 3, cex = 2)
points(q3x, q3y, pch = 3, cex = 2)

segments(q1x, 0, q1x, q1y, lty = 2, col = "grey")
segments(q3x, 0, q3x, q3y, lty = 2, col = "grey")
segments(-6, q1y, q1x, q1y, lty = 2, col = "grey")
segments(-6, q3y, q3x, q3y, lty = 2, col = "grey")

segments(q1x, -1, q1x, 2,  lwd = 1.5, xpd = NA)
text(-0.7, 2.8, TeX("$X_{Q1}$", italic = TRUE), cex = t+0.05)

segments(q3x, -1, q3x, 2,  lwd = 1.5, xpd = NA)
text(3.3, 2.8, TeX("$X_{Q3}$", italic = TRUE), cex = t+0.05)

segments(-6.2, q1y, -5.6, q1y,  lwd = 1.5, xpd = NA)
text(-5.2, 19, TeX("$Y_{Q1}$", italic = TRUE), cex = t+0.05)
# 
segments(-6.2, q3y, -5.6, q3y,  lwd = 1.5, xpd = NA)
text(-5.2, 39, TeX("$Y_{Q3}$", italic = TRUE), cex = t+0.05)

abline(lm(qy~qx), col = "black")
abline(lm(datos$Y~datos$X), col = "blue")

legend(6.8, 60, legend=c("Método Ishikawa", "Mínimos cuadrados"),
       col=c("black", "blue"), lty=1, xpd = NA, cex = t)

dev.off()


