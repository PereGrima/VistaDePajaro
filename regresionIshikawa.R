
datos = read.csv2("regresionFuerzaBruta.csv")

png("coeficientesIshikawa.png", width=1500, height=1500, res = 300)

par(las = 1)
plot(datos$X, datos$Y, xlim = c(-5, 5), ylim = c(10, 55),
		 xaxt = "n", yaxt = "n",
		 xlab = "Valores de X",
		 ylab = "Valores de Y")
axis(1, seq(-5, 5, by = 1))
axis(2, seq(10, 55, by = 5))
grid()

q1x = quantile(datos$X, 0.25)
q3x = quantile(datos$X, 0.75)
q1y = quantile(datos$Y, 0.25)
q3y = quantile(datos$Y, 0.75)

qx = c(q1x, q3x) 
qy = c(q1y, q3y)

points(q1x, q1y, pch = 3, cex = 2)
points(q3x, q3y, pch = 3, cex = 2)

abline(lm(qy~qx), col = "black")
abline(lm(datos$Y~datos$X), col = "red")
legend(-4.5, 55, legend=c("Método Ishikawa", "Mínimos cuadrados"),
       col=c("black", "red"), lty=1)

dev.off()


