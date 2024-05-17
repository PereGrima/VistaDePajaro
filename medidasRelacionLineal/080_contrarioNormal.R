
png(file="080_contrarioNormal.png",width=1500, height=1600, res = 300)
par(mar=c(2, 5.5, 0.5, 2), mgp = c(0,0.4,0), mfrow=c(3,2), las=1) #c(1.5, 2.5, 0.5, 0.5)
r <- seq(-1, 1, 0.01)
f <- function(n){
  num = gamma(0.5*(n - 1))
  deno = gamma(0.5*(n-2))*sqrt(pi)
  prod = (1-r^2)^(0.5*(n-4))
  num *prod/deno
}
t = 0.45
n = 3
cx =-0.75
plot(r, f(n), type = "l", tck=-0.03, ylim= c(0,2.32), xlab="", ylab="", cex = t, family = "serif", col = "blue")
text(cx, 0.9*max(f(n)[2:200]), paste("n=",n))

par(mar=c(2, 2.5, 0.5, 5))
n=4
plot(r, f(n), type = "l", tck=-0.03, xlab="", ylab="", cex = t, family = "serif", col = "blue")
text(cx, 0.9*0.72, paste("n=",n))

par(mar=c(2, 5.5, 1, 2))
n=5
plot(r, f(n), type = "l", tck=-0.03, xlab="", ylab="", cex = t, family = "serif", col = "blue")
text(cx, 0.9*max(f(n)[2:200]), paste("n=",n))

par(mar=c(2, 2.5, 1, 5))
n=6
plot(r, f(n), type = "l", tck=-0.03, xlab="", ylab="", cex = t, family = "serif", col = "blue")
text(cx, 0.9*max(f(n)[2:200]), paste("n=",n))

par(mar=c(1.5, 5.5, 1, 2))
n=7
plot(r, f(n), type = "l", tck=-0.03, xlab="", ylab="", cex = t, family = "serif", col = "blue")
text(cx, 0.9*max(f(n)[2:200]), paste("n=",n))

par(mar=c(1.5, 2.5, 1, 5))
n=30
plot(r, f(n), type = "l", tck=-0.03, xlab="", ylab="", cex = t, family = "serif", col = "blue")
lines(r, dnorm(r,0,0.191), type = "l", col = "red")
text(cx, 0.9*max(f(n)[2:200]), paste("n=",n))

dev.off()