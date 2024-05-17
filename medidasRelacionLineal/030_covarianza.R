library(latex2exp)
d = read.csv2("datosCova.csv")
medX = mean(d$X)
medY = mean(d$Y)
png(file="030_covarianza.png",width=1300, height=738, res = 300) # height=738 width=1200

layout_mat <- matrix(c(1, 2, 0, 0), nrow = 2, ncol = 2, byrow = TRUE)
my_lay <- layout(mat = layout_mat, widths = c(2, 3), heights = c(3.2, 0), respect =TRUE)

t = 0.7
pe1 = c(12.563, 29.05)
pe2 = c(11.389,	19.427)
pe3 = c(6.5766,	14.25)
pe4 = c(6.8726,	25.79)
  
par(mar = c(6.75, 1.5, 1, 1), family = "serif") #par(mar = c(6.75, 0.9, 1, 1), family = "serif")
plot(d$X,d$Y, las=1, ylim = c(10,35), xlim = c(3, 14), xlab="", ylab="", pch = 19, col = "black", cex = t, xaxt = "n", yaxt = "n")
axis(side=1,  padj=-2.65, tck=-0.02, at=seq(0, 15, 1), col.axis="white", cex.axis=t-0.05, family = "serif") # 
axis(side=2, at=seq(10, 35, 2), hadj=-0.2, tck=-0.02, cex.axis=t-0.05, col.axis="white", las=1, family = "serif")
mtext('X', side=1, line=0.2, cex=t+0.1, las=1, family = "serif")
mtext('Y', side=2, line=0.4, cex=t+0.1, las=1, family = "serif")

par(mar = c(1, 0.5, 1, 1.3))

plot(d$X,d$Y, las=1, ylim = c(10,35), xlim = c(3, 14), xlab="", ylab="", pch = 19, col = d$color, cex = t+0.15, xaxt = "n", yaxt = "n")

axis(side=1,  padj=-2.65, tck=-0.02, at=seq(0, 15, 1), col.axis="white", cex.axis=t-0.05, family = "serif") # 
axis(side=2, at=seq(10, 35, 2), hadj=-0.2, tck=-0.02, cex.axis=t-0.05, col.axis="white", las=1, family = "serif")

#axis(side=1,  padj=-2.65, tck=-0.02, at=seq(0, 15, 1),  cex.axis=t-0.05, family = "serif") # col.axis="white",
#axis(side=2, at=seq(10, 35, 5), hadj=-0.2, tck=-0.02, cex.axis=t-0.05, las=1, family = "serif")
mtext('X', side=1, line=0.2, cex=t+0.1, las=1, family = "serif")
#mtext('Y', side=2, line=1.1, cex=t+0.1, las=1, family = "serif")
x1 = c(1, 17)
y1 = c(medY, medY)
x2 = c(medX, medX)
y2 = c(9, 36)
lines(x1, y1, col = "black", lwd = 1, lty = 2)
lines(x2, y2, col = "black", lwd = 1, lty = 2)

l=0.08
lg = 1
arrows(medX, pe1[2], pe1[1], pe1[2], length = l, angle = 20, lwd = lg, col = "darkgreen", code=1)
arrows(pe1[1], medY, pe1[1], pe1[2], length = l, angle = 20, lwd = lg, col = "darkgreen", code=1)

arrows(medX, pe2[2], pe2[1], pe2[2], length = l, angle = 20, lwd = lg, col = "darkgreen", code=1)
arrows(pe2[1], medY, pe2[1], pe2[2], length = l, angle = 20, lwd = lg, col = "red", code=1)

arrows(medX, pe3[2], pe3[1], pe3[2], length = l, angle = 20, lwd = lg, col = "red", code=1)
arrows(pe3[1], medY, pe3[1], pe3[2], length = l, angle = 20, lwd = lg, col = "red", code=1)

arrows(medX, pe4[2], pe4[1], pe4[2], length = l, angle = 20, lwd = lg, col = "red", code=1)
arrows(pe4[1], medY, pe4[1], pe4[2], length = l, angle = 20, lwd = lg, col = "darkgreen", code=1)

tq = 0.5
tp = 0.2
ts = 0.3
text(13.7, 34.5, "I", cex=t+tq, family = "serif", col = "blue")
text(6, 34.7, "Producto", cex=t+tp, family = "serif", col = "red")
text(6, 33, "negativo", cex=t+tp, family = "serif", col = "red")
text(11.2, 30, substitute(paste(bold('+'))), family = "serif", col = "darkgreen",  cex = t+ts)
text(13, 26.3, substitute(paste(bold('+'))), family = "serif", col = "darkgreen", cex = t+ts)

text(13.7, 10.5, "II", cex=t+tq, family = "serif", col = "blue")
text(11.6, 34.7, "Producto", cex=t+tp, family = "serif", col = "darkgreen")
text(11.6, 33, "positivo", cex=t+tp, family = "serif", col = "darkgreen")
text(10, 18.5, substitute(paste(bold('+'))), family = "serif", col = "darkgreen",  cex = t+ts)
text(11.9, 20.7, TeX(r'($-$)'), family = "serif", col = "red", cex = t+ts)

text(3.5, 10.5, "III", cex=t+tq, family = "serif", col = "blue")
text(6, 12.3, "Producto", cex=t+tp, family = "serif", col = "darkgreen")
text(6, 10.6, "positivo", cex=t+tp, family = "serif", col = "darkgreen")
text(7.5, 13.2, TeX(r'($-$)'), family = "serif", col = "red",  cex = t+ts)
text(6.2, 18, TeX(r'($-$)'), family = "serif", col = "red", cex = t+ts)

text(3.5, 34.5, "IV", cex=t+tq, family = "serif", col = "blue")
text(11.6, 12.3, "Producto", cex=t+tp, family = "serif", col = "red")
text(11.6, 10.6, "negativo", cex=t+tp, family = "serif", col = "red")
text(6.5, 24, substitute(paste(bold('+'))), family = "serif", col = "darkgreen",  cex = t+ts)
text(7.7, 26.5, TeX(r'($-$)'), family = "serif", col = "red", cex = t+ts) 

text(medX, 37, TeX(r'($ \bar{x}$)', italic=TRUE), xpd=NA, family = "serif", cex = t+0.3)
text(15, medY, TeX(r'($ \bar{y}$)', italic=TRUE), xpd=NA, family = "serif", cex = t+0.3)
dev.off()
