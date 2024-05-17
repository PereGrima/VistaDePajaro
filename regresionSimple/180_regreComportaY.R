png(file="180_regreComportaY.png",width=1900, height=950, res = 300)

x = seq(150, 190, 0.005)
e = rnorm(8001, 0, 8)
y = -100 + x + e 
t = 0.8
par(mar = c(2, 10.5, 0.5, 8), family = "serif")
plot(x, y,  ylim = c(20, 120), xaxs="i", yaxs="i", pch = ".", col="darkgrey", 
     xlab="", ylab="", cex = t, xaxt = "n", yaxt = "n")

axis(side=1, padj=-2, tck=-0.02, at=seq(150, 190, 5), cex.axis = t)
axis(side=2, hadj=0.1, tck=-0.02, at=seq(20, 90, 10), cex.axis = t, las = 1)
axis(side=2, hadj=0.4, tck=-0.02, at = seq(100, 120, 10), cex.axis = t, las = 1)

mtext('Estatura (cm)', side=1, line=1, cex=t, las=1, family = "serif")
mtext('Peso (kg)', side=2, line=1.5, cex=t, las=0, family = "serif")

segments(150, 50, 190, 90, col = "green", lwd = 2)

par(new = TRUE)

segments(160, 30, 160, 90, col = "red", lwd = 1.5)
segments(160, 60, 166, 60, lty = 2, col ="red", lwd = 1.5)

x1 = seq(30, 90, 0.05)
y1 = dnorm(x1, 60, 8)
for (i in 1:2001) {
  segments(y1[i]*100+160, x1[i], y1[i+1]*100+160, x1[i+1], lwd = 1.5, col = "red")
}

segments(180, 50, 180, 110, col = "red", lwd = 1.5)
segments(180, 80, 186, 80, lty = 2, col ="red", lwd = 1.5)

x1 = seq(50, 110, 0.05)
y1 = dnorm(x1, 80, 8)
for (i in 1:2001) {
  segments(y1[i]*100+180, x1[i], y1[i+1]*100+180, x1[i+1], lwd = 1.5, col = "red")
}
dev.off()

