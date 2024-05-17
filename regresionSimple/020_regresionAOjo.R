
datos = read.csv2("coeficientesSinFormulas.csv")

png("020_regresionAOjo.png", width=1800, height=750, res = 300)

par(mar = c(2, 6, 0.5, 14), family = "serif")

t=0.8
plot(datos$X, datos$Y, xlim = c(-6, 6), ylim = c(0, 60),
		 xlab="", ylab="", pch = 19, col = "red",
		 cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-2, tck=-0.02, at=seq(-6, 6, by = 2), cex.axis = t)
axis(side=2, hadj=-1, tck=-0.02, at=0, cex.axis = t, las = 1)
axis(side=2, hadj=-0, tck=-0.02, at=seq(10, 60, 10), cex.axis = t, las = 1)
mtext('Valores de X', side=1, line=0.9, cex=t, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.3, cex=t, las=0, family = "serif")


grid()
lines(c(-4.75, 5.75), c(0, 60))
abline(lm(datos$Y~datos$X), col = "blue")
legend(6.8, 60, legend=c("A ojo", "Mínimos cuadrados"),
       col=c("black", "blue"), lty=1, xpd = NA, cex = t)

dev.off()


