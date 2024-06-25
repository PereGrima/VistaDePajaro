library(png)

AzulS = "#B9C9F5"
d = read.csv2("datosPanaderia.csv")
t=0.65

png("0212 HistoDifEscala_1.png", width=1210, height=585, res = 300)
par(mar=c(1.5, 1.7, 1, 0.5) + 0.1, mgp = c(0,0.4,0), mfrow=c(1,2), family = "serif")

# Histograma 1
hist(d$Peso[d$Maquina == 2], 
     breaks = seq(195, 230, by = 3),
     ylab = "", xlab = "", ylim = c(0, 28), 
     #xlim = c(192, 218), 
     xaxt='n', yaxt='n',  
     xaxs="i", yaxs="i", main = "", col = AzulS)
axis(1, 
     #seq(194, 216, by=2), 
     tck=-0.02, cex.axis=t, padj = -1.5, xpd = NA)
axis(2, 
     #seq(0, 18, by=2), 
     tck=-0.02, las=1, cex.axis=t,)
#axis(3, seq(190, 230, 2), tck = F, labels = F)
#axis(4, seq(0, 18, 2), tck = F, labels = F)
mtext(side = 1, text = "Peso (g)", line = 0.5, cex=t+0.1)
mtext(side = 2, text = "Frecuencia", line = 1, cex=t+0.1)
mtext(side = 3, text = paste("Máquina", 1), line = 0.2, cex=t+0.15)

# Histograma 2
hist(d$Peso[d$Maquina == 2], 
     breaks = seq(200, 222, by = 2),
     ylab = "", xlab = "", ylim = c(0, 18), 
     #xlim = c(200, 222), 
     xaxt='n', yaxt='n',  
     xaxs="i", yaxs="i", main = "", col = AzulS)
axis(1, 
     #seq(200, 222, by=2), 
     tck=-0.02, cex.axis=t, padj = -1.5, xpd = NA)
axis(2, 
     #seq(0, 18, by=2), 
     tck=-0.02, las=1, cex.axis=t,)
#axis(3,  seq(190, 230, 2), tck = F, labels = F)
#axis(4,  seq(0, 18, 2), tck = F, labels = F)
mtext(side = 1, text = "Peso (g)", line = 0.5, cex=t+0.1)
mtext(side = 2, text = "Frecuencia", line = 1, cex=t+0.1)
mtext(side = 3, text = paste("Máquina", 2), line = 0.2, cex=t+0.15)

# Aspa roja
par(xpd = NA)
aspa = readPNG("0212 aspaRoja2.png")
rasterImage(aspa, 193, 16, 196, 19)

dev.off()



