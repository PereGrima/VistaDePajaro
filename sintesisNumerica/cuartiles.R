library("plotrix")

# 
png(file="cuartiles.png",width=1800, height=1700, res = 275)
x <- 1
y <- 1
c = 4
k = 0.85
par(mar=c(0, 0, 0, 0))
plot(x, y, asp=1, ylim=c(1, 30), xlim=c(0, 10), ylab="", xlab="", col = "white", yaxt = 'n', xaxt='n', frame.plot = FALSE)
t = c("100", "98", "95", "94", "93", "92", "90", "86",
      "84", "82", "82", "81", "80", "78", "78", 
      "73", "72", "71", "69", "68", "64", "61", "61",
      "61", "60", "59", "58", "57", "52", "50")
for (i in 1:30)
text(c, i, t[i], cex=k)

text(c-4, 30, "MENOR", cex=k)
text(c-4, 1, "MAYOR", cex=k)
arrows(c-0.85, 30, c-2.35, 30, length = 0.1, angle = 20,
       code = 2)
arrows(c-0.85, 1, c-2.35, 1, length = 0.1, angle = 30,
       code = 2)

arrows(c-4, 29, c-4, 2, length = 0.15, angle = 20,
       code = 2, lwd = 2)
text(c-8, 20, "Datos ordenados de", cex=k)
text(c-8, 18.8, "menor a mayor", cex=k)

draw.circle(c, 8, 0.6)
draw.circle(c, 23, 0.6)
segments(c-0.5, 15.5, c+0.5, 15.5, lwd = 2)
arrows(c+0.85, 23, c+1.85, 23, length = 0.1, angle = 20,
       code = 2)
text(c+6, 23, "Q1 = 61: Primer cuartil", cex=k)

arrows(c+0.85, 8, c+1.85, 8, length = 0.1, angle = 20,
       code = 2)
text(c+6, 8, "Q3 = 86: Tercer cuartil", cex=k)

arrows(c+0.85, 15.5, c+1.85, 15.5, length = 0.1, angle = 20,
       code = 2)
text(c+5.65, 15.5, "Me = 75,5: Mediana", cex=k)

segments(c+10, 23, c+11.5, lwd = 1.5)
segments(c+10, 8, c+11.5, lwd = 1.5)

arrows (c+10.75, 23.5, c+10.75, 25, length = 0.1, angle = 20, lwd = 1.5, code = 2)
arrows (c+10.75, 22.5, c+10.75, 21, length = 0.1, angle = 20, lwd = 1.5, code = 2)

arrows (c+10.75, 8.5, c+10.75, 10, length = 0.1, angle = 20, lwd = 1.5, code = 2)
arrows (c+10.75, 7.5, c+10.75, 6, length = 0.1, angle = 20, lwd = 1.5, code = 2)

arrows (c+7.5, 16.2, c+7.5, 17.7, length = 0.1, angle = 20, lwd = 1.5, code = 2)
arrows (c+7.5, 14.8, c+7.5, 13.3, length = 0.1, angle = 20, lwd = 1.5, code = 2)

text(c+10.75, 25.75, "25%", cex = k)
text(c+10.75, 20.25, "75%", cex = k)

text(c+7.5, 18.25, "50%", cex = k)
text(c+7.5, 12.75, "50%", cex = k)

text(c+10.75, 10.75, "25%", cex = k)
text(c+10.75, 5.25, "75%", cex = k)

dev.off()