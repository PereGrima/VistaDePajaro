
png(file="120_brainBodyOriginal.png",width=1900, height=1200, res = 300)

brainBody = read.csv2("brainBodyWeight.csv")
x = brainBody$body/1000
y = brainBody$brain/1000

t= 1
scatterhist = function(x, y, xlab="", ylab=""){
  zones=matrix(c(2,0,1,3), ncol=2, byrow=TRUE) # matrix(c(2,0,1,3), ncol=2, byrow=TRUE)
  layout(zones, widths=c(3.3/5, 1.7/5), heights=c(1/5,4/5)) # (zones, widths=c(4/5,1/5), heights=c(1/5,4/5)
  xhist = hist(x, breaks = seq(0, 7, 0.25), plot=FALSE)
  yhist = hist(y, breaks = seq(0, 6, 0.25), plot=FALSE)
  top = max(c(xhist$counts, yhist$counts))
  par(mar=c(2.5, 9, 0.5, 0.5),  family = "serif") # par(mar=c(3,3,1,1))
  plot(x,y, xlim = c(0, 7), ylim = c(0,6), xlab="", ylab="", 
       cex = t-0.1, xaxt = "n", yaxt = "n", pch = 19, col = "red")
  axis(side=1, padj=-1.2, tck=-0.02, at=seq(0, 7, 1), cex.axis = t)
  axis(side=2, hadj=-0.1, tck=-0.02, at=seq(0, 6, 1), cex.axis = t, las = 1)
  
  mtext('Peso del cuerpo (x1000 kg)', side=1, line=1.3, cex=t-0.1, las=1, family = "serif")
  mtext('Peso del cerebro (x1000 g)', 
        side=2, line=1.5, cex=t-0.1, las=0, family = "serif")
  
  text(4.9, 5.75, "Elefante africano")
  text(4.2, 4.65, "Elefante asiático")
  text(1.7, 1.3, "Persona humana")
  
  #abline(lm(y ~ x), col = "blue")
  
  par(mar=c(0, 9, 0.5, 0.6)) # par(mar=c(0,3,1,1))
  barplot(xhist$counts, axes=FALSE, ylim=c(0, top), space=0)
  par(mar=c(2.5, 0, 0.5, 7)) # par(mar=c(3,0,1,1))
  barplot(yhist$counts, axes=FALSE, xlim=c(0, top), space=0, horiz=TRUE)
  par(oma=c(3, 3, 0, 0)) # par(oma=c(3,3,0,0))
}


with(brainBody, scatterhist(x, y, xlab="MCS", ylab="PCS"))

dev.off()
# info: https://www.r-bloggers.com/2011/06/example-8-41-scatterplot-with-marginal-histograms/
