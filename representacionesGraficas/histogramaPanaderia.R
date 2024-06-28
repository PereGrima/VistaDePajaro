
AzulS = "#B9C9F5"
d = read.csv2("datosPanaderia.csv")
t=0.6

png("histogramaPanaderia.png", width=1250, height=1250, res = 300)
par(mar=c(1.5, 1.7, 1, 0.5) + 0.1, mgp = c(0,0.4,0), mfrow=c(2,2), family = "sans")

m = 25
for (i in 1:2) {
  hist(d$Peso2[d$Maquina == i],
       breaks = seq(190, 230, by = 2),
       ylab = "", xlab = "", ylim = c(0, m), xlim = c(190, 230),
       xaxt='n', yaxt='n',  xaxs="i", yaxs="i", main = "", col = AzulS)
  abline(v = c(200, 220), lty = 2, col = "red")
  abline(v = 210, lty = 2, col = "darkgreen")
  axis(1, seq(190, 230, by=5), tck=-0.02, cex.axis=t, padj = -1.5, xpd = NA)
  axis(2, seq(0, m, by=5), tck=-0.02, las=1, cex.axis=t,)
  axis(3,  seq(190, 230, 2), tck = F, labels = F)
  axis(4,  seq(0, m, 5), tck = F, labels = F)
  #mtext(side = 1, text = "Peso (g)", line = 0.5, cex=t+0.1)
  mtext(side = 2, text = "Frecuencia", line = 1, cex=t+0.05)
  mtext(side = 3, text = paste("Máquina", i), line = 0.2, cex=t+0)
}
for (i in 1:160) {
  if(d$Operario[i] == "A") {d$Operario[i]=1}
  if(d$Operario[i] == "B") {d$Operario[i]=2}
}

for (i in 1:2) {
  hist(d$Peso2[d$Operario == i], 
       breaks = seq(190, 230, by = 2),
       ylab = "", xlab = "", ylim = c(0, m), xlim = c(190, 230), 
       xaxt='n', yaxt='n',  xaxs="i", yaxs="i", main = "", col = AzulS)
  abline(v = c(200, 220), lty = 2, col = "red") 
  abline(v = 210, lty = 2, col = "darkgreen") 
  axis(1, seq(190, 230, by=5), tck=-0.02, cex.axis=t, padj = -1.5, xpd = NA)
  axis(2, seq(0, m, by=5), tck=-0.02, las=1, cex.axis=t,)
  axis(3,  seq(190, 230, 2), tck = F, labels = F)
  axis(4,  seq(0, m, 5), tck = F, labels = F)
  mtext(side = 1, text = "Peso (g)", line = 0.5, cex=t)
  mtext(side = 2, text = "Frecuencia", line = 1, cex=t)
  O="A"
  if(i==2) {O="B"}
  mtext(side = 3, text = paste("Operario", O), line = 0.2, cex=t+0)
}
dev.off()



