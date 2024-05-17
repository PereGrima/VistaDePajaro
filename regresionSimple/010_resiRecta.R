library(latex2exp)

y = c(12, 14, 13, 11, 16, 15)
x = c(13, 16, 11, 12, 15, 14)


png(file="010_resiRecta.png",width=1900, height=825, res = 300)

t= 0.8

par(mfrow = c(1, 2), mar = c(1.3, 3.1, 0.5, 1.3), family = "serif")
#par(mar = c(1.3, 3.5, 0.5, 15), family = "serif") #suma 18.5
plot(x, y, xlim = c(10, 17), ylim = c(10, 17), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.015, at=seq(10, 17, 1), labels=FALSE, cex.axis = t)
axis(side=2, hadj=0.2, tck=-0.015, at=seq(10, 17, 1), labels=FALSE, cex.axis = t, las = 1)

grid()

mtext('X', side=1, line=0.5, cex=t+0.05, las=1, family = "serif")
mtext('Y', side=2, line=0.5, cex=t+0.05, las=1, family = "serif")

text(11, 13.3, "1", cex = t+0.05)
text(12, 10.7, "2", cex = t+0.05)
text(13, 11.7, "3", cex = t+0.05)
text(14, 15.3, "4", cex = t+0.05)
text(15, 16.3, "5", cex = t+0.05)
text(16, 13.7, "6", cex = t+0.05)

b0 = lm(y ~ x)[[1]][1]
b1 = lm(y ~ x)[[1]][2]
segments(11, 13, 11, b0+b1*11, lty = 2)
segments(12, 11, 12, b0+b1*12, lty = 2)
segments(13, 12, 13, b0+b1*13, lty = 2)
segments(14, 15, 14, b0+b1*14, lty = 2)
segments(15, 16, 15, b0+b1*15, lty = 2)
segments(16, 14, 16, b0+b1*16, lty = 2)


text(10.7, 12.5, TeX("$e_1$", italic = TRUE), cex = t+0.05)
text(11.7, 11.5, TeX("$e_2$", italic = TRUE), cex = t+0.05)
text(12.7, 12.5, TeX("$e_3$", italic = TRUE), cex = t+0.05)
text(13.7, 14.5, TeX("$e_4$", italic = TRUE), cex = t+0.05)
text(14.7, 15.5, TeX("$e_5$", italic = TRUE), cex = t+0.05)
text(15.7, 14.5, TeX("$e_6$", italic = TRUE), cex = t+0.05)

points(16, b0+b1*16, pch = 15)

text(16, 9.6, TeX("$x_6$", italic = TRUE), cex = t+0.1, xpd = NA)
#segments(16, 10, 16, 14, lty = 5)
segments(16, 14, 17.2, 14, lty = 5, xpd = NA)
segments(16, b0+b1*16, 17.2, b0+b1*16, lty = 5, xpd = NA)

text(17.6, 15.2, TeX("$\\hat{y}_6$", italic = TRUE), xpd = NA)
text(17.62, 14, TeX("$y_6$", italic = TRUE), xpd = NA)

abline(lm(y ~ x), col = "blue")

##############################


plot(0,0, xlab="", ylab="", type = 'n', yaxt = "n", xaxt = "n",
     cex = t,   xaxs="i", yaxs="i")
e1 = "0"
e2 = ""
e3 = ""
axis(side=1, padj=-1.8, tck=-0.015, at=c(-1, -0.1518, 0.5), labels= c(e1, e2, e3), cex.axis = t+0.1)
axis(side=2, hadj=-2, tck=-0.015, at=-0.61, labels=FALSE, cex.axis = t+0.1)
segments(-0.5, -0.25, 0.75, 0.65, col = "blue", lwd = 3)
segments(-1, -0.61, -0.5, -0.25, col = "blue", lwd = 1, lty = 2)
segments(-0.1528, 0, 0.5, 0, col ="black", lwd = 0.5)
arrows(0.5, 0, 0.5, 0.47, code = 3, length = 0.1, angle = 20)

segments(-0.1528, 0, -0.1528, -1, lty =2, col = "grey")
segments(0.5, 0, 0.5, -1, lty =2, col = "grey")
arrows(-0.1528, -0.9, 0.5, -0.9, code = 3, length = 0.1, angle = 20)

text(0.64, 0.25, TeX("$b_1$", italic = TRUE))
text(-1.15, -0.61, TeX("$b_0$", italic = TRUE), xpd=NA)

text(0.17, -0.83, "1", cex = t+0.1)

text(-0.15, 0.75, TeX("$\\hat{y} = b_0 + b_1x$", italic = TRUE))
arrows(-0.1, 0.62, 0.2, 0.32, code = 2, length = 0.1, angle = 20)
dev.off()

