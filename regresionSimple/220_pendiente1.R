png(file="220_pendiente1.png",width=1300, height=550, res = 300)
t = 0.85


par(mfrow=c(1,2), mar=c(1.5, 2.2, 0.5, 1.5), xaxs="i", yaxs="i", family = "serif") # mar=c(2, 2.5, 0.5, 0.5)

concen = read.csv2("pendiente1.csv")

x = as.numeric(concen$True)
y = as.numeric(concen$Measured)

plot(x, y, xlim = c(-2, 102), ylim = c(-2, 100),  col = "red", pch = 19, cex = t-0.15, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n")

axis(side=1, at=seq(0, 100, 20), padj=-3.2, tck=-0.02, cex.axis=t-0.25)
axis(side=2, at=seq(0, 100, 20), hadj=-0.5, tck=-0.02, cex.axis=t-0.25, las=1)
    
mtext("Concentración real", side=2, line=0.9, cex=t-0.2)
mtext("Concentración medida", side=1, line=0.6, cex=t-0.2)
abline(lm(y ~ x), col = "blue")
segments(0, 0, 100, 100, col = "black", lwd = 1.5)

###########################
par(new = FALSE, mar=c(1.5, 1, 0.5, 2.7))
x1 = seq(0, 100, 10)
y1 = matrix(NA, nrow = 11, ncol = 50)
for (i in 1:50) {
  y1[,i] = x1 + rnorm(11, 0, 1.139)
  plot(x1, y1[,i], xlim = c(-2, 102), ylim = c(-2, 102),  col = "#FF9999", cex = t-0.15, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n")
  
  par(new = TRUE)
  if (i == 50) {
    for (j in 1:50) {
      abline(lm(y1[,j] ~ x1), col = "blue")
    }
    axis(side=1, at=seq(0, 100, 10), padj=-3.2, tck=-0.02, cex.axis=t-0.25)
    axis(side=2, at=seq(0, 90, 10), hadj=-0.5, tck=-0.02, cex.axis=t-0.25, las=1)
    axis(side=2, at=100, hadj=0, tck=-0.02, cex.axis=t-0.25, las=1)
    mtext('X: Longitud línea mano', side=1, line=0.6, cex=t-0.2)
    mtext('Y: Edad al morir', side=2, line=0.9, cex=t-0.2)
    abline(lm(y ~ x), col = "green")
  }
}
dev.off()
