
datos = read.csv2("regresionFuerzaBruta.csv")

png("regresionAOjo.png", width=1800, height=885, res = 300)

par(fig = c(0.1, 0.6, 0, 1), mar = c(2, 2.5, 0.5, 0.5), family = "serif")

plot(datos$X, datos$Y, xlim = c(-6, 6), ylim = c(0, 60),
		 xlab="", ylab="", pch = 19, col = "red",
		 cex = 1, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-1.5, tck=-0.02, at=seq(-6, 6, by = 2), cex.axis = 0.9)
axis(side=2, hadj=-0.5, tck=-0.02, at=0, cex.axis = 0.9, las = 1)
axis(side=2, hadj=0.2, tck=-0.02, at=seq(10, 60, 10), cex.axis = 0.9, las = 1)
mtext('Valores de X', side=1, line=1.1, cex=0.9, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.3, cex=0.9, las=0, family = "serif")


grid()
lines(c(-4.75, 5.75), c(0, 60))
abline(lm(datos$Y~datos$X), col = "red")
legend(6.8, 60, legend=c("A ojo", "Mínimos cuadrados"),
       col=c("black", "red"), lty=1, xpd = NA, cex = 0.9)

dev.off()


