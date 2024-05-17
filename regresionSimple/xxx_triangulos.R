k1=1
n=200
set.seed(k1)
puntos = matrix(round(runif(14*n, -0.5, 100.5), 0), nrow=n, ncol=14)

colnames(puntos) = c("P1", "P2", "Q1", "Q2", "R1", "R2", "b1PQ", "b0PQ", 
                     "Dist_RaPQ", "DistPQ", "DistPR", "DistQR", "Perimetro", "Area")
puntos[,7] = (puntos[,2]-puntos[,4])/(puntos[,1]-puntos[,3]) # b1 de recta PQ
puntos[,8] = puntos[,3]-puntos[,7]*puntos[,1] # bo de recta PQ
puntos[,9] = abs(puntos[,7]*puntos[,5]-puntos[,6]+puntos[,8])/(puntos[,7]**2+1)**0.5 # Distancia de R a PQ
puntos[,10] = ((puntos[,3]-puntos[,1])**2+(puntos[,4]-puntos[,2])**2)^0.5 # Distancia PQ
puntos[,11] = ((puntos[,5]-puntos[,1])**2+(puntos[,6]-puntos[,2])**2)^0.5 # Distancia PR
puntos[,12] = ((puntos[,6]-puntos[,4])**2+(puntos[,5]-puntos[,3])**2)^0.5 # Distancia QR            
puntos[,13] = puntos[,10]+puntos[,11]+puntos[,12] # Perimetro
puntos[,14] = puntos[,9]*puntos[,10]/2  #Area

plot(puntos[,13], puntos[,14], xlim = c(0, 300), ylim = c(0, 7000))
abline(lm(puntos[,14] ~ puntos[,13]))
k1=k1+1