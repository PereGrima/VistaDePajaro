
png(file="060_simulaCorre.png",width=1900, height=975, res = 300)

t = 0.85
ite = 100000
corre = rep(NA, ite)

for (i in 1:ite) {
  x = rnorm(22, 137, 6.4)
  y = rnorm(22, 6, 0.5)
  corre[i] = cor(x,y)
}

par(mar = c(2.5, 10.6, 0.5, 7.9), family = "serif") # par(mar = c(2.5, 7.5, 0.5, 11)
hist(corre, breaks = seq(-1,1,0.05),  xlab="", ylab="", cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i", main = "", ylim=c(0, 10000),
     axes = TRUE, plot = TRUE)
axis(side=1, padj=-2, tck=-0.015, at=seq(-1, 1, 0.5), cex.axis = t)
axis(side=1, padj=-2, tck=-0.01, at=seq(-1, 1, 0.1), cex.axis = t, labels = FALSE)
axis(side=2, hadj=0.2, tck=-0.015, at=seq(0, 10000, 2500), cex.axis = t, labels = c("  0", " 25", " 50", " 75", "100   "), las = 1)
segments(-1,10000,1,10000, lwd = 1.5)
segments(1,0,1,10000, lwd = 1.5)

segments(-0.323, -400, -0.323, 6000, col ="red", xpd = NA)
segments(0.323, -400, 0.323, 6000, col ="red", xpd = NA)

arrows(-0.323, 5500, -0.55, 5500, length = 0.1, col = "red")
arrows(0.323, 5500, 0.55, 5500, length = 0.1, col = "red")

mtext('Coeficientes de correlación', side=1, line=1.5, cex=t+0.05, las=1, family = "serif", xpd = NA)
mtext('Frecuencia (x100)', side=2, line=1.7, cex=t+0.05, las=0, family = "serif")

text (-0.323, -900, "-0,323", col = "red", cex = t+0.05, xpd=NA)
text (0.323, -900, "0,323", col = "red", cex = t+0.05, xpd=NA)
text (-0.75, 5500, "7,06%", col = "red", cex = t+0.05)
text (0.75, 5500, "7,12%", col = "red", cex = t+0.05)
dev.off()