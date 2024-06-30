png("boxplot.png", width=1250, height=300, res = 300)
par(mar=c(0.8, 0, 0, 0), omi=c(0,0,0,0), family = "sans")

x = c(5,7,7,9,9,9,9,9,9,9,10,11,11,11,11,11,14,15,16,18)
t = 0.55

plot(1, type="n", xlab="X", ylab="Y", xlim=c(4, 19), ylim=c(0.95, 1.09), 
     yaxt='n', xaxt="n", frame=F)
boxplot(x, horizontal = TRUE, frame=F, cex = t, ylim = c(4, 19), xaxt='n',
        medlwd=1, whisklty = 1,
        boxwex = 0.08, add=T)
axis(1, seq(0, 20, by=1), tck=-0.04, las=1, cex.axis=t, padj = -3)

q1 = quantile(x, 0.25)
q3 = quantile(x, 0.75)
iqr = q3 - q1

c = adjustcolor("lightgreen", alpha.f = 0.3)
rect(q1-1.5*iqr, 0.97, q1, 1.03, col = c, border = NA)
rect(q3+1.5*iqr, 0.97, q3, 1.03, col = c, border = NA)

segments(q1-1.5*iqr, 1.04, q1-1.5*iqr, 1.05)
segments(q1, 1.04, q1, 1.063)

segments(q3+1.5*iqr, 1.04, q3+1.5*iqr, 1.05)
segments(q3, 1.04, q3, 1.063)

arrows(q1-1.5*iqr, 1.045, q1, 1.045, length = 0.075, angle = 20, code=3)
arrows(q1, 1.045, q3, 1.045, length = 0.075, angle = 20, code=3)
arrows(q3+1.5*iqr, 1.045, q3, 1.045, length = 0.075, angle = 20, code=3)

t=0.6
text(7.5, 1.057, "1,5·IQR", cex=t)
text(10, 1.057, "IQR", cex=t)
text(12.5, 1.057, "1,5·IQR", cex=t)
text(q1, 1.075, "Q1", cex=t)
text(q3, 1.075, "Q3", cex=t)
dev.off()
