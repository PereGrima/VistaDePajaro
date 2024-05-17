Vino = read.csv2("Vino.csv")

yVino = as.numeric(Vino$muertesEnfCardiaca)
xVino = as.numeric(Vino$consumoVino)

png(file="070_vino.png",width=1900, height=950, res = 300)

t= 0.8
par(mar = c(2, 7.5, 0.5, 11), family = "serif") # sumo 7.5
plot(xVino, yVino, xlim = c(0, 10), ylim = c(50, 350), xlab="", ylab="", pch = 19, col = "red", 
     cex = t, xaxt = "n", yaxt = "n", xaxs="i", yaxs="i")

axis(side=1, padj=-2, tck=-0.015, at=seq(0, 10, 1), cex.axis = t)
axis(side=2, hadj=0.2, tck=-0.015, at=seq(50, 350, 50), cex.axis = t, las = 1)

text(xVino+0.4, yVino, labels=Vino$Num, cex= 0.7)

legend (10, 370, 
        legend = c("1: Irlanda", 
                   "2: Finlandia", 
                   "3: Reino Unido",
                   "4: Nueva Zelanda",
                   "5: Noruega",
                   "6: Dinamarca",
                   "7: Australia",
                   "8: Islandia",
                   "9: Suecia",
                   "10: Estados Unidos",
                   "11: Canada",
                   "12: Alemania (RF)",
                   "13: Austria",
                   "14: Holanda",
                   "15: Belgica",
                   "16: Suiza",
                   "17: Italia",
                   "18: España",
                   "19: Francia"), 
                   xpd = TRUE, cex = 0.8, bty = "n")
mtext('Estatura (cm)', side=1, line=1, cex=t+0.05, las=1, family = "serif")
mtext('Nota examen', side=2, line=1.5, cex=t+0.05, las=0, family = "serif")

#abline(lm(yestNota ~ xestNota), col = "blue")

dev.off()

