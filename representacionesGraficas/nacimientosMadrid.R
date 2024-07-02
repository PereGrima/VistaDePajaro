#Datos en: https://www.madrid.org/iestadis/fijas/estructu/demograficas/mnp/estructu_1nac.htm

nM = read.csv2("nacimientosMadrid.csv")
colp = rep("black", dim(nM)[1])
for (i in 1:dim(nM)[1]) {
  if (nM$LF.2022[i] == "F") {colp[i]="red"}
}

plot(nM$ano2022, nM$sem2022, type="p", pch = 16, col = colp, )