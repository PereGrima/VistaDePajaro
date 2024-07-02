data_mundial <- read.csv("https://bitsandbricks.github.io/data/gapminder.csv")
x = subset(data_mundial, anio==2007)
t = 0.6

png("boxplotEstratificado.png", width=1250, height=650, res = 300)

par(mar=c(1, 0, 0, 0) , mgp = c(0,0,0), mfrow=c(1,2), family = "sans")
boxplot(expVida ~ continente, x,
        col = "white", medcol="white", staplecol="white",
        boxcol = "white", whiskcol = "white",
        outline = F, cex=t)
stripchart(expVida ~ continente,
           data = x,
           method = "jitter",
           pch = 19,
           col = 2:4,
           vertical = TRUE,
           add = TRUE, cex=t)

boxplot(expVida ~ continente, x,
        medlwd=1, whisklty = 1, cex=t)

# boxplot(pobl ~ continente, x)
# boxplot(PBI_PC ~ continente, x)
dev.off()
