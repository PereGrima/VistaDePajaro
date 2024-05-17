png("140_regresionVariablesAleatorias.png",width=1900, height=2320, res = 300)
t= 1
set.seed(123)
x = matrix(NA, nrow = 6, ncol = 20)
y = matrix(NA, nrow = 6, ncol = 20)

par(mfrow=c(3,2), mar = c(3.2, 4.7, 1.5, 3.3), family = "serif")

for (j in c(1, 3, 5)) {
  for (i in j:(j+1)) {
    par(mar = c(3.2, 2.7, 2.7, 7.2)) #c(3.2, 2, 1.5, 6.5))
    if ((i==1) | (i==3) | (i==5)) {par(mar = c(3.2, 6, 2.7, 4))} # mar = c(3.2, 5.2, 1.5, 3.3)
    x[i,] = rnorm(20, 170, 8)
    y[i,] = x[i,] - 100 + rnorm(20, 0, 5)
    plot(x[i,], y[i,], xlim = c(150, 190), ylim = c(40,100), cex = t+0.2, las=1, xlab="", ylab="", 
         xaxs="i", yaxs="i", xaxt = "n", yaxt = "n", col="red")
    axis(side=1, at=seq(150, 190, 10), padj=-0.8, tck=-0.02, cex.axis=t+0.2)
    axis(side=2, at=seq(40, 90, 10), hadj=0.35, tck=-0.015, cex.axis=t+0.2, las=1)
    axis(side=2, at=100, hadj=0.55, tck=-0.015, cex.axis=t+0.2, las=1)
    mtext('Estatura (cm)', side=1, line=1.7, cex=t-0.2, family = "serif")
    if (i == 1) {mtext(expression(paste(italic("y"), " = -91,89 + 0,9511", italic("x"))), side=3, line=0.25, cex=t, las=1)}
    if (i == 2) {mtext(expression(paste(italic("y"), " = -84,50 + 0,9058", italic("x"))), side=3, line=0.25, cex=t, las=1)}
    if (i == 3) {mtext(expression(paste(italic("y"), " = -125,7 + 1,138", italic("x"))), side=3, line=0.25, cex=t, las=1)}
    if (i == 4) {mtext(expression(paste(italic("y"), " = -99,41 + 0,9914", italic("x"))), side=3, line=0.25, cex=t, las=1)}
    if (i == 5) {mtext(expression(paste(italic("y"), " = -67,70 + 0,8076", italic("x"))), side=3, line=0.25, cex=t, las=1)}
    if (i == 6) {mtext(expression(paste(italic("y"), " = -110,1 + 1,058", italic("x"))), side=3, line=0.25, cex=t, las=1)}
    mtext('Peso (kg)', side=2, line=1.9, cex=t-0.15, family = "serif")
    abline(lm(y[i,] ~ x[i,]), col = "blue")
    segments(150, 50, 190, 90, col = "black")
  }
  # xy =cbind(x,y)
  # write.csv2(xy,"xy.csv")
}

dev.off()
