x = c(5,7,7,9,9,9,9,9,9,9,10,11,11,11,11,11,14,15,16,18)
t = 0.65

plot(1, type="n", xlab="X", ylab="Y", xlim=c(4, 19), ylim=c(0.8, 1.2), xaxt="n")
boxplot(x, horizontal = TRUE, cex = t, ylim = c(4, 19),
        width = 1, boxwex = 0.3, add=T, medcol="red")