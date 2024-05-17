png(file="150_regreVAsuperpuestas.png",width=1300, height=550, res = 300)
t = 0.85
set.seed(123)
xy = read.csv2("xy.csv")
par(mfrow=c(1,2), mar=c(1.5, 2.2, 0.5, 1.5), xaxs="i", yaxs="i", family = "serif") # mar=c(2, 2.5, 0.5, 0.5)

x = matrix(NA, nrow = 20, ncol = 6)
y = matrix(NA, nrow = 20, ncol = 6)

for (i in 1:6) {
  x[,i] = as.numeric(xy[i,2:21])
  y[,i] = as.numeric(xy[i,22:41])
  plot(x[,i], y[,i], xlim = c(150, 190), ylim = c(40,100), cex = t-0.25, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n", col="red")
  
  par(new = TRUE)
    if (i == 6) {
      for (j in 1:6) {
        abline(lm(y[,j] ~ x[,j]), col = "blue")
      }  
    axis(side=1, at=seq(150, 190, 10), padj=-3.2, tck=-0.02, cex.axis=t-0.25)
    axis(side=2, at=seq(40, 90, 10), hadj=-0.5, tck=-0.02, cex.axis=t-0.25, las=1)
    axis(side=2, at=100, hadj=0, tck=-0.02, cex.axis=t-0.25, las=1)
    mtext('Estatura (cm)', side=1, line=0.6, cex=t-0.2)
    mtext('Peso (kg)', side=2, line=0.9, cex=t-0.2)
    segments(150, 50, 190, 90, col = "black", lwd = 1.5)
  }
}
par(new = FALSE, mar=c(1.5, 1, 0.5, 2.7))
x = matrix(NA, nrow = 20, ncol = 50)
y = matrix(NA, nrow = 20, ncol = 50)
for (i in 1:50) {
  x[,i] = rnorm(20, 170, 8)
  y[,i] = x[,i] - 100 + rnorm(20, 0, 5)
  plot(x[,i], y[,i], xlim = c(150, 190), ylim = c(40,100),  col = "#FF9999", cex = t-0.15, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n")
  
  par(new = TRUE)
  if (i == 50) {
    for (j in 1:50) {
      abline(lm(y[,j] ~ x[,j]), col = "blue")
    }
    axis(side=1, at=seq(150, 190, 10), padj=-3.2, tck=-0.02, cex.axis=t-0.25)
    axis(side=2, at=seq(40, 90, 10), hadj=-0.5, tck=-0.02, cex.axis=t-0.25, las=1)
    axis(side=2, at=100, hadj=0, tck=-0.02, cex.axis=t-0.25, las=1)
    mtext('Estatura (cm)', side=1, line=0.6, cex=t-0.2)
    mtext('Peso (kg)', side=2, line=0.9, cex=t-0.2)
    segments(150, 50, 190, 90, col = "green", lwd = 2)
  }
}
dev.off()
