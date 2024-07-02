data_mundial <- read.csv("https://bitsandbricks.github.io/data/gapminder.csv")
x = subset(data_mundial, anio==2007)
t = 0.6

png("boxplotEstratificado2.png", width=1250, height=650, res = 300)

par(mar = c(1, 2, 0.2, 0), fig=c(0, 0.55, 0, 1))
boxplot(PBI_PC~ continente, x,
        col = "white", medcol="white", staplecol="white",
        boxcol = "white", whiskcol = "white",
        outline = F, cex=t, ylab = "", xlab = "", ylim = c(0, 55000), 
        xaxt='n', yaxt='n',  xaxs="i", main = "")
        
stripchart(PBI_PC ~ continente,
           data = x,
           method = "jitter",
           pch = 19,
           col = 2:4,
           vertical = TRUE,
           add = TRUE, cex=t,  xaxt='n', yaxt='n',  xaxs="i")
axis(1, at=1:5, labels = c("Africa", "Améri.", "Asia", "Euro", "Ocean."), tck=-0.02, las=1, cex.axis=t-0.05, padj = -2.8)
axis(2, seq(0, 55000, by=5000), tck=-0.02, las=1, cex.axis=t-0.07, hadj = -0.4, xpd = NA)
mtext(side = 2, text = "Esperanza de vida (años)", line = 1, cex=t-0.07)

par(mar = c(1, 0.2, 0.2, 0), fig=c(0.55, 1, 0, 1), new = TRUE)
boxplot(PBI_PC ~ continente, x,
        medlwd=1, whisklty = 1, cex=t, ylab = "", xlab = "", ylim = c(0, 55000),
        xaxt='n', yaxt='n',  xaxs="i",  main = "")
axis(1, at=1:5, labels = c("Africa", "Améri.", "Asia", "Euro", "Ocean."), tck=-0.02, las=1, cex.axis=t-0.05, padj = -2.8)
#axis(2, seq(30, 90, by=10), tck=-0.02, las=1, cex.axis=t-0.05, hadj = 1.5, xpd = NA)
#mtext(side = 2, text = "Esperanza de vida", line = 1, cex=t)


# boxplot(pobl ~ continente, x)
# boxplot(PBI_PC ~ continente, x)
dev.off()
