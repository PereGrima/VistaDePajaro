
datos = read.csv2("regresionFuerzaBruta.csv")

#png("coeficientesFuerzaBruta2.png", width=1800, height=950, res = 300)

par(fig = c(0, 0.35, 0.3, 1), mar = c(1.5, 2, 1.6, 0.5), family = "serif")

plot(datos$X, datos$Y, xlim = c(-6, 6), ylim = c(0, 60),
     xlab="", ylab="", pch = 19, col = "red",
     cex = 0.75, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")
axis(side=1, padj=-2.2, tck=-0.02, at=seq(-6, 6, by = 2), cex.axis = 0.75)
axis(side=2, hadj=-0.8, tck=-0.02, at=0, cex.axis = 0.9, las = 1)
axis(side=2, hadj=-0.1, tck=-0.02, at=seq(10, 60, 10), cex.axis = 0.75, las = 1)
mtext('Valores de X', side=1, line=1, cex=0.85, las=1, family = "serif")
mtext('Valores de Y', side=2, line=1.2, cex=0.85, las=0, family = "serif")
grid()

lines(c(-4.75, 5.75), c(0, 60))
abline(lm(datos$Y~datos$X), col = "red")
legend(-6, 60, legend=c("A ojo", "MC"),
       col=c("black", "red"), lty=1, xpd = NA, cex = 0.75)

#####################

t = 0.85
sumQ = matrix(rep(NA, 151*61), ncol=61)
for (i in 1:151) {
  b0 = 19.9 + 0.1*i
  for (j in 1:61) {
    b1 = 1.9 + 0.1*j
    sumQ[i, j] = sum((datos$Y - (b0 + b1*datos$X))^2)
  }
}
b0 = seq(20, 35, by=0.1)
b1 = seq(2, 8, by=0.1)

par(fig = c(0.4, 1, 0, 1), mar = c(0.3, 0, 1, 0), new = TRUE)

trans = persp(b0, b1, sumQ, 
              phi = 20, theta = 50, expand = 1,
              zlim = c(0, 2500),
              zlab = "",
              ylab = "b1",
              xlab = "b0",
              ticktype = "detailed",
              axes = FALSE)
    
lines <- contourLines(b0, b1, sumQ)
bottom <- -0
for (i in seq_along(lines)) {
  segment <- lines[[i]]
  lines(trans3d(segment$x, segment$y, bottom, trans))
}
m = which(sumQ == min(sumQ), arr.ind = TRUE)
b0min = 19.9 + 0.1*m[1]
b1min = 1.9 + 0.1*m[2]
lines(trans3d(b0min, seq(2, b1min, by=0.1),  z = 0, trans), col ="red", lty = 2)
lines(trans3d(b0min:35, b1min, z = 0, trans), col ="red", lty = 2)

par(new = TRUE)
persp(b0, b1, sumQ,
      phi = 20, theta = 50, expand = 1,
      zlim = c(0, 2500),
      zlab = "",
      ylab = expression("b"[0]),
      xlab = "b1",
      ticktype = "detailed",
      axes = FALSE)

text(trans3d(29, 1.2, 0,trans), expression("b"[0]), col = "black", cex = t)
text(trans3d(37, 4, 0,trans), expression("b"[1]), col = "black", cex = t)
#text(trans3d(20, 0.8, 1300,trans), "SQ", col = "black", cex = t)
#text(trans3d(20, 1.4, 2700, trans), "SQ", col = "black", cex = t, xpd = NA)
text(trans3d(20, 7, 2800, trans), "Suma de los cuadrados de los residuos", col = "black", cex = t+0.05, xpd = NA)


a = as.character(round(b0min,1))
d = "27.0" # para que salga el ,0
text(trans3d(27, 1.5, 0,trans), d, col = "red", cex = t)
b = as.character(b1min)
text(trans3d(36, 4.8, 0,trans), b, col = "red", cex = t)

a1 = as.character(20)
a2 = as.character(25)
a3 = as.character(30)
a4 = as.character(35)

lines(trans3d(20, seq(1.9, 2, by=0.1),  z = 0, trans), col ="black")
text(trans3d(20, 1.6, 0,trans), a1, col = "black", cex = t)

lines(trans3d(25, seq(1.9, 2, by=0.1),  z = 0, trans), col ="black")
text(trans3d(25, 1.6, 0,trans), a2, col = "black", cex = t)

lines(trans3d(30, seq(1.9, 2, by=0.1),  z = 0, trans), col ="black")
text(trans3d(30, 1.6, 0,trans), a3, col = "black", cex = t)

lines(trans3d(35, seq(1.9, 2, by=0.1),  z = 0, trans), col ="black")
text(trans3d(35, 1.6, 0,trans), a4, col = "black", cex = t, xpd = NA)

###############

b1 = as.character(2)
b2 = as.character(3)
b3 = as.character(4)
b4 = as.character(5)
b5 = as.character(6)
b6 = as.character(7)
b7 = as.character(8)
bb = c(b1, b2, b3, b4, b5, b6, b7)

for (i in 1:7) {
  lines(trans3d(c(35, 35.3), c(i+1, i+1), z = 0, trans), col ="black")
  if (i !=4) {
    text(trans3d(35.8, i+1, 0,trans), bb[i], cex = t, col = "black", xpd = NA)
  }
}

###############

c1 = as.character(500)
c2 = as.character(1000)
c3 = as.character(1500)
c4 = as.character(2000)
c5 = as.character(2500)
cc = c(c1, c2, c3, c4, c5)

for (i in 1:5) {
  lines(trans3d(20, seq(1.8, 2, by=0.1),  z = 500*i, trans), col ="black")
  text(trans3d(20, 1.3, i*500, trans), cc[i], col = "black", xpd = NA, cex = t)
}

#dev.off()

#Ref: https://stackoverflow.com/questions/77900826/how-can-i-add-contour-lines-to-a-3d-plot-built-with-persp
