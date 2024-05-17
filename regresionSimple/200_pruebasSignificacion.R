png(file="200_pruebasSignaficacion.png",width=1300, height=550, res = 300)
t = 0.85
set.seed(123)

par(mfrow=c(1,2), mar=c(1.5, 2.2, 0.5, 1.5), xaxs="i", yaxs="i", family = "serif") # mar=c(2, 2.5, 0.5, 0.5)

x = matrix(NA, nrow = 31, ncol = 50)
y = matrix(NA, nrow = 31, ncol = 50)
for (i in 1:50) {
  x[,i] = rnorm(31, 14, 3)
  y[,i] = 35 + rnorm(31, 0, 4.25)
  plot(x[,i], y[,i], xlim = c(6, 22), ylim = c(0,90),  col = "#FF9999", cex = t-0.15, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n")
  
  par(new = TRUE)
  if (i == 50) {
    for (j in 1:50) {
      abline(lm(y[,j] ~ x[,j]), col = "blue")
    }
    axis(side=1, at=seq(6, 22, 2), padj=-3.2, tck=-0.02, cex.axis=t-0.25)
    axis(side=2, at=seq(0, 90, 10), hadj=-0.5, tck=-0.02, cex.axis=t-0.25, las=1)
    
    mtext(expression("Y: Volumen de madera (pies  "    ^ "3", "                                                    )"), 
          side=2, line=0.9, cex=t-0.2)
    
    mtext('X: Longitud circunferencia (pies)', side=1, line=0.6, cex=t-0.2)
    segments(6, -6.55, 22, 74.5, col = "green", lwd = 1.5)
  }
}
par(new = FALSE, mar=c(1.5, 1, 0.5, 2.7))
x = matrix(NA, nrow = 50, ncol = 50)
y = matrix(NA, nrow = 50, ncol = 50)
for (i in 1:50) {
  x[,i] = rnorm(50, 9.2, 1.26)
  y[,i] = 66.7 + rnorm(50, 0, 14.15)
  plot(x[,i], y[,i], xlim = c(4, 14), ylim = c(10,100),  col = "#FF9999", cex = t-0.15, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n")
  
  par(new = TRUE)
  if (i == 50) {
    for (j in 1:50) {
      abline(lm(y[,j] ~ x[,j]), col = "blue")
    }
    axis(side=1, at=seq(4, 14, 2), padj=-3.2, tck=-0.02, cex.axis=t-0.25)
    axis(side=2, at=seq(10, 90, 10), hadj=-0.5, tck=-0.02, cex.axis=t-0.25, las=1)
    axis(side=2, at=100, hadj=0, tck=-0.02, cex.axis=t-0.25, las=1)
    mtext('X: Longitud línea mano', side=1, line=0.6, cex=t-0.2)
    mtext('Y: Edad al morir', side=2, line=0.9, cex=t-0.2)
    segments(4, 73.8, 14, 60.1, col = "green", lwd = 1.5)
  }
}
dev.off()
