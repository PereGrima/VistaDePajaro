
png(file="Cuartiles_2.png",width=1300, height=280, res = 300)
x <- seq(-1,1,1)
y <- seq(-1,1,1)
t = 0.85
k = -0.7
par(mar=c(0, 0, 0, 0))
plot(x, y, asp=1, ylim=c(-1, 1), xlim=c(-1, 1), ylab="", xlab="", col = "white", yaxt = 'n', xaxt='n', frame.plot = FALSE)
text(0, 0, "2,  4,   6,  8", cex = t+0.1, family = "serif")
segments(-0.9,-0.2,-0.06,-0.2, lwd=2.5)
arrows(-0.5,-0.25,-0.5, -0.55, 0.07, 30)
segments(0.2,-0.23, 0.9, -0.23, lwd=2.5)
arrows(0.55,-0.25, 0.55, -0.55, 0.07, 30)
arrows(0,0.15, 0, 0.45, 0.07, 30)
a=expression("Q"[2]*"=3")
b=expression("Q"[3]*"=7")
c=expression("Me=5")

text(-0.6, -0.8, a, cex=t+0.1, family = "serif")
text(0.5, -0.8, b, cex=t+0.1, family = "serif")
text(-0.1, 0.7, c, cex=t+0.1, family = "serif")

dev.off()