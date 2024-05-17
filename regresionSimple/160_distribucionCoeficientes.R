png(file="160_distribucionCoeficientes.png",width=1300, height=600, res = 300)
t = 0.8

# set.seed(123)
# ite = 10000
# x = rnorm(20*ite, 170, 8)
# y = - 100 + x + rnorm(20*ite, 0, 5)
# b0 = rep(NA, ite)
# b1 = rep(NA, ite)
# for (i in 1:ite) {
#   xr = x[(-19+20*i):(20*i)]
#   yr = y[(-19+20*i):(20*i)]
#   regre = lm(yr ~ xr)
#   b0[i] = regre[[1]][1]
#   b1[i] = regre[[1]][2]
# }

b0b1 = read.csv2("b0b1.csv")
b0 = b0b1[,2]
m0 = mean(b0)
stdb0 = sqrt(var(b0))
b1 = b0b1[,3]

par(mfrow=c(1,2), mar=c(1.4, 2.2, 1.4, 1.5), xaxs="i", yaxs="i", family = "serif") # mar=c(1.5, 2.2, 0.5, 1.5)

h0 = hist(b0, main = "", ylim = c(0, 2000), xlim=c(-200, 0), breaks=seq(-260, 60, 10), cex.axis = t, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n")
h0
xfit <- seq(min(b0), max(b0), length = 40) 
yfit <- dnorm(xfit, mean = mean(b0), sd = sd(b0)) 
yfit <- yfit * diff(h0$mids[1:2]) * length(b0) 
lines(xfit, yfit, col = "red", lwd = 1)
#https://stackoverflow.com/questions/20078107/overlay-normal-curve-to-histogram-in-r

axis(side=1, at=seq(-200, 0, 50), padj=-3.2, tck=-0.02, cex.axis=t-0.2)
axis(side=2, at=seq(0, 2000, 500), hadj=-0.2, tck=-0.02, cex.axis=t-0.2, las=1, labels = c("", "0.5", "1.0", "1.5", "2.0"))
axis(side=2, at=0, hadj=-2, tck=-0.02, cex.axis=t-0.2, las=1)
mtext("Frecuencia (x1000)", side = 2, line = 1.1, cex = t-0.2)
mtext(expression(italic("                           b"[0])), side=3, line=0.15, cex=t-0.05, las=1)
mtext("Distribución de" , side=3, line=0.25, cex=t-0.1, las=1)
mtext(expression(italic("                     b"[0])), side=1, line=0.57, cex=t-0.2, las=1)
mtext("Valores de" , side=1, line=0.5, cex=t-0.2, las=1)

h1 = hist(b1, main = "", ylim = c(0, 2000), xlim=c(0.4, 1.6), breaks=seq(0, 2, 0.05), cex.axis = t, las=1, xlab="", ylab="", xaxt = "n", yaxt = "n")
h1
xfit <- seq(min(b1), max(b1), length = 40) 
yfit <- dnorm(xfit, mean = mean(b1), sd = sd(b1)) 
yfit <- yfit * diff(h1$mids[1:2]) * length(b0) 
lines(xfit, yfit, col = "red", lwd = 1)

axis(side=1, at=seq(0.4, 1.6, 0.2), padj=-3.2, tck=-0.02, cex.axis=t-0.2)
axis(side=2, at=seq(0, 2000, 500), hadj=-0.2, tck=-0.02, cex.axis=t-0.2, las=1, labels = c("", "0.5", "1.0", "1.5", "2.0"))
axis(side=2, at=0, hadj=-2, tck=-0.02, cex.axis=t-0.2, las=1)
mtext("Frecuencia (x1000)", side = 2, line = 1.1, cex = t-0.2)
mtext(expression(italic("                           b"[1])), side=3, line=0.15, cex=t-0.05, las=1)
mtext("Distribución de" , side=3, line=0.25, cex=t-0.1, las=1)
mtext(expression(italic("                       b"[1])), side=1, line=0.57, cex=t-0.2, las=1)
mtext("Valores de" , side=1, line=0.5, cex=t-0.2, las=1)

# b0b1 = cbind(b0, b1)
# write.csv2(b0b1,"b0b1.csv")

dev.off()

