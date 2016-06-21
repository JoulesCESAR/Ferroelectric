#___________________________________________________________________________________________________
# Script para gráficos de la data

#___________________________________________________________________________________________________
# Carga de data

load('RData/data.RData')

#___________________________________________________________________________________________________
#  Dimensiones del gráfico

ancho<- 15
altura<- 9

#___________________________________________________________________________________________________

message('\tFigura 6(a)' )

x<-data.1a[,1]
y1<-data.1a[,200]
y2<-data.1a[,20]
y3<-data.1a[,10]
y4<-data.1a[,6]
y5<-data.1a[,3]
y6<-data.1a[,2]

jpeg(filename = 'graphs/figura_6(a).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Temperatura[K]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y6, type="l", pch=20, col="yellow", lty=2, lwd=1.0)
lines(x, y5, type="l", pch=20, col="brown", lty=3, lwd=1.0)
lines(x, y4, type="l", pch=20, col="red", lty=4, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=5, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=6, lwd=1.0)

segments(x0 = x[which(data.1a[,2] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.1a[,2] == 'NaN')[1]-1], y1 = y6[which(data.1a[,2] == 'NaN')[1]-1], 
         col = 'yellow', lty = 2)
segments(x0 = x[which(data.1a[,3] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.1a[,3] == 'NaN')[1]-1], y1 = y5[which(data.1a[,3] == 'NaN')[1]-1], 
         col = 'brown', lty = 3)
segments(x0 = x[which(data.1a[,6] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.1a[,6] == 'NaN')[1]-1], y1 = y4[which(data.1a[,6] == 'NaN')[1]-1], 
         col = 'red', lty = 4)
segments(x0 = x[which(data.1a[,10] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.1a[,10] == 'NaN')[1]-1], y1 = y3[which(data.1a[,10] == 'NaN')[1]-1], 
         col = 'green', lty = 5)
segments(x0 = x[which(data.1a[,20] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.1a[,20] == 'NaN')[1]-1], y1 = y2[which(data.1a[,20] == 'NaN')[1]-1], 
         col = 'blue', lty = 6)
segments(x0 = x[which(data.1a[,200] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.1a[,200] == 'NaN')[1]-1], y1 = y1[which(data.1a[,200] == 'NaN')[1]-1], 
         col = 'black', lty = 1)

points(x = c(373.15, 448.15, 643.15, 723.15, 763.15), y = c(0.73, 0.70, 0.60, 0.50, 0.40), 
         type = "p", pch = 19, cex = 0.5)

legend("topright", c("D = 20 μm","D = 200 nm","D = 100 nm","D = 60 nm","D = 30 nm","D = 20 nm"), 
       lty=c(1,6,5,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red","brown","yellow"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = 15, height = 6)
dev.off()

rm(x, y1, y2, y3, y4, y5, y6)
#___________________________________________________________________________________________________

message('\tFigura 6(b)' )

x<-data.2a[,1]
y1<-data.2a[,200]
y2<-data.2a[,20]
y3<-data.2a[,10]
y4<-data.2a[,6]
y5<-data.2a[,3]
y6<-data.2a[,2]

jpeg(filename = 'graphs/figura_6(b).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Temperatura[K]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y6, type="l", pch=20, col="yellow", lty=2, lwd=1.0)
lines(x, y5, type="l", pch=20, col="brown", lty=3, lwd=1.0)
lines(x, y4, type="l", pch=20, col="red", lty=4, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=5, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=6, lwd=1.0)

segments(x0 = x[which(data.2a[,2] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.2a[,2] == 'NaN')[1]-1], y1 = y6[which(data.2a[,2] == 'NaN')[1]-1], 
         col = 'yellow', lty = 2)
segments(x0 = x[which(data.2a[,3] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.2a[,3] == 'NaN')[1]-1], y1 = y5[which(data.2a[,3] == 'NaN')[1]-1], 
         col = 'brown', lty = 3)
segments(x0 = x[which(data.2a[,6] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.2a[,6] == 'NaN')[1]-1], y1 = y4[which(data.2a[,6] == 'NaN')[1]-1], 
         col = 'red', lty = 4)
segments(x0 = x[which(data.2a[,10] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.2a[,10] == 'NaN')[1]-1], y1 = y3[which(data.2a[,10] == 'NaN')[1]-1], 
         col = 'green', lty = 5)
segments(x0 = x[which(data.2a[,20] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.2a[,20] == 'NaN')[1]-1], y1 = y2[which(data.2a[,20] == 'NaN')[1]-1], 
         col = 'blue', lty = 6)
segments(x0 = x[which(data.2a[,200] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.2a[,200] == 'NaN')[1]-1], y1 = y1[which(data.2a[,200] == 'NaN')[1]-1], 
         col = 'black', lty = 1)

points(x = c(373.15, 448.15, 643.15, 723.15, 763.15), y = c(0.73, 0.70, 0.60, 0.50, 0.40), 
         type = "p", pch = 19, cex = 0.5)

legend("topright", c("D = 20 μm","D = 200 nm","D = 100 nm","D = 60 nm","D = 30 nm","D = 20 nm"), 
       lty=c(1,6,5,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red","brown","yellow"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = 15, height = 6)
dev.off()

rm(x, y1, y2, y3, y4, y5, y6)
#___________________________________________________________________________________________________

message('\tFigura 7(a)' )

x<-data.3a[,1]
y1<-data.3a[,200]
y2<-data.3a[,20]
y3<-data.3a[,10]
y4<-data.3a[,6]
y5<-data.3a[,3]
y6<-data.3a[,2]

jpeg(filename = 'graphs/figura_7(a).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Temperatura[K]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y6, type="l", pch=20, col="yellow", lty=2, lwd=1.0)
lines(x, y5, type="l", pch=20, col="brown", lty=3, lwd=1.0)
lines(x, y4, type="l", pch=20, col="red", lty=4, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=5, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=6, lwd=1.0)

segments(x0 = x[which(data.3a[,2] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.3a[,2] == 'NaN')[1]-1], y1 = y6[which(data.3a[,2] == 'NaN')[1]-1], 
         col = 'yellow', lty = 2)
segments(x0 = x[which(data.3a[,3] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.3a[,3] == 'NaN')[1]-1], y1 = y5[which(data.3a[,3] == 'NaN')[1]-1], 
         col = 'brown', lty = 3)
segments(x0 = x[which(data.3a[,6] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.3a[,6] == 'NaN')[1]-1], y1 = y4[which(data.3a[,6] == 'NaN')[1]-1], 
         col = 'red', lty = 4)
segments(x0 = x[which(data.3a[,10] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.3a[,10] == 'NaN')[1]-1], y1 = y3[which(data.3a[,10] == 'NaN')[1]-1], 
         col = 'green', lty = 5)
segments(x0 = x[which(data.3a[,20] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.3a[,20] == 'NaN')[1]-1], y1 = y2[which(data.3a[,20] == 'NaN')[1]-1], 
         col = 'blue', lty = 6)
segments(x0 = x[which(data.3a[,200] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.3a[,200] == 'NaN')[1]-1], y1 = y1[which(data.3a[,200] == 'NaN')[1]-1], 
         col = 'black', lty = 1)

points(x = c(373.15, 448.15, 643.15, 723.15, 763.15), y = c(0.73, 0.70, 0.60, 0.50, 0.40), 
         type = "p", pch = 19, cex = 0.5)

legend("topright", c("D = 20 μm","D = 200 nm","D = 100 nm","D = 60 nm","D = 30 nm","D = 20 nm"), 
       lty=c(1,6,5,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red","brown","yellow"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = 15, height = 6)
dev.off()

rm(x, y1, y2, y3, y4, y5, y6)
#___________________________________________________________________________________________________

message('\tFigura 7(b)' )

x<-data.4a[,1]
y1<-data.4a[,200]
y2<-data.4a[,20]
y3<-data.4a[,10]
y4<-data.4a[,6]


jpeg(filename = 'graphs/figura_7(b).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Temperatura[K]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y4, type="l", pch=20, col="red", lty=2, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=3, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=4, lwd=1.0)

segments(x0 = x[which(data.4a[,6] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.4a[,6] == 'NaN')[1]-1], y1 = y4[which(data.4a[,6] == 'NaN')[1]-1], 
         col = 'red', lty = 2)
segments(x0 = x[which(data.4a[,10] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.4a[,10] == 'NaN')[1]-1], y1 = y3[which(data.4a[,10] == 'NaN')[1]-1], 
         col = 'green', lty = 3)
segments(x0 = x[which(data.4a[,20] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.4a[,20] == 'NaN')[1]-1], y1 = y2[which(data.4a[,20] == 'NaN')[1]-1], 
         col = 'blue', lty = 4)
segments(x0 = x[which(data.4a[,200] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.4a[,200] == 'NaN')[1]-1], y1 = y1[which(data.4a[,200] == 'NaN')[1]-1], 
         col = 'black', lty = 1)

points(x = c(373.15, 448.15, 643.15, 723.15, 763.15), y = c(0.73, 0.70, 0.60, 0.50, 0.40), 
         type = "p", pch = 19, cex = 0.5)

legend("topright", c("D = 20 μm","D = 200 nm","D = 100 nm","D = 60 nm"), 
       lty=c(1,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = 15, height = 6)
dev.off()

rm(x, y1, y2, y3, y4)

#___________________________________________________________________________________________________

message('\tFigura 8(a)' )

x<-data.5a[,1]
y1<-data.5a[,2]
y2<-data.5a[,7]
y3<-data.5a[,10]
y4<-data.5a[,15]


jpeg(filename = 'graphs/figura_8(a).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Tamaño[nm]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,200,20),labels=seq(0,200,20),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y4, type="l", pch=20, col="red", lty=2, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=3, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=4, lwd=1.0)

segments(x0 = x[max(which(data.5a[,2] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.5a[,2] == 'NaN'))+1], y1 = y1[max(which(data.5a[,2] == 'NaN'))+1], 
         col = 'black', lty = 1)
segments(x0 = x[max(which(data.5a[,7] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.5a[,7] == 'NaN'))+1], y1 = y2[max(which(data.5a[,7] == 'NaN'))+1], 
         col = 'blue', lty = 4)
segments(x0 = x[max(which(data.5a[,10] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.5a[,10] == 'NaN'))+1], y1 = y3[max(which(data.5a[,10] == 'NaN'))+1], 
         col = 'green', lty = 3)
segments(x0 = x[max(which(data.5a[,15] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.5a[,15] == 'NaN'))+1], y1 = y4[max(which(data.5a[,15] == 'NaN'))+1], 
         col = 'red', lty = 2)

points(x = c(50, 60, 75, 100, 150, 200), y = c(0.26, 0.63, 0.672, 0.714, 0.756, 0.7896), 
         type = "p", pch = 19, cex = 0.5)

legend(160,0.4, c("t = 0.2 nm","t = 0.7 nm","t = 1.0 nm","t = 1.5 nm"), 
       lty=c(1,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = 15, height = 6)
dev.off()

rm(x, y1, y2, y3, y4)

#___________________________________________________________________________________________________

message('\tFigura 8(b)' )

x<-data.6a[,1]
y1<-data.6a[,2]
y2<-data.6a[,5]
y3<-data.6a[,10]
y4<-data.6a[,15]

jpeg(filename = 'graphs/figura_8(b).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Tamaño[nm]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty= 1)

axis(1, pos = c(0,0), at=seq(0,200,20),labels=seq(0,200,20),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y4, type="l", pch=20, col="red", lty=2, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=3, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=4, lwd=1.0)

segments(x0 = x[max(which(data.6a[,2] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.6a[,2] == 'NaN'))+1], y1 = y1[max(which(data.6a[,2] == 'NaN'))+1], 
         col = 'black', lty = 1)
segments(x0 = x[max(which(data.6a[,5] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.6a[,5] == 'NaN'))+1], y1 = y2[max(which(data.6a[,5] == 'NaN'))+1], 
         col = 'blue', lty = 4)
segments(x0 = x[max(which(data.6a[,10] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.6a[,10] == 'NaN'))+1], y1 = y3[max(which(data.6a[,10] == 'NaN'))+1], 
         col = 'green', lty = 3)
segments(x0 = x[max(which(data.6a[,15] == 'NaN'))+1], y0 = 0.0, 
         x1 = x[max(which(data.6a[,15] == 'NaN'))+1], y1 = y4[max(which(data.6a[,15] == 'NaN'))+1], 
         col = 'red', lty = 2)

points(x = c(50, 60, 75, 100, 150, 200), y = c(0.26, 0.63, 0.672, 0.714, 0.756, 0.7896), 
         type = "p", pch = 19, cex = 0.5)

legend(160,0.4, c("t = 0.2 nm","t = 0.5 nm","t = 1.0 nm","t = 1.5 nm"), 
       lty=c(1,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = 15, height = 6)
dev.off()

rm(x, y1, y2, y3, y4)

#___________________________________________________________________________________________________

message('\tFigura 9(a)' )

x<-data.7a[,1]
y1<-data.7a[,2]
y1<-y1[y1 > 0.0]
y2<-data.7a[,3]
y2<-y2[y2 > 0.0]
y3<-data.7a[,8]
y3<-y3[y3 > 0.0]
y4<-data.7a[,11]
y4<-y4[y4 > 0.0]
y5<-data.7a[,16]
y5<-y5[y5 > 0.0]

jpeg(filename = 'graphs/figura_9(a).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x[min(which(data.7a[,2]>0)):max(which(data.7a[,2]>0))],y1, type = 'l', xlab = 'Tamaño[nm]', 
     ylab = 'Tc(K)', pch=20, axes = 0, ylim = c(0,800.0), lwd = 1.0, cex.lab=0.6, lty =1)

axis(1, pos = c(0,0), at=seq(0,260,10),labels=seq(0,260,10),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", col.axis = "black", 
     lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x[min(which(data.7a[,16]>0)):max(which(data.7a[,16]>0))], y5, type="l", pch=20, 
      col="brown", lty=2, lwd=1.0)
lines(x[min(which(data.7a[,11]>0)):max(which(data.7a[,11]>0))], y4, type="l", pch=20, 
      col="red", lty=3, lwd=1.0)
lines(x[min(which(data.7a[,8]>0)):max(which(data.7a[,8]>0))], y3,type="l", pch=20, 
      col="green", lty=4, lwd=1.0)
lines(x[min(which(data.7a[,3]>0)):max(which(data.7a[,3]>0))], y2,type="l", pch=20, 
      col="blue", lty=5, lwd=1.0)

points(x = c(23,24,25,36,25,44,50,60,75), y = c(700,719,736,745,752,760,765,763,764), 
         type = "p", pch = 19, cex = 0.6)
points(x = c(25,27,30,40,60,90,250), y = c(700,720,748,750,751,752,752), 
         type = "p", pch = 18, cex = 0.7, col = 'blue')
points(x = c(12,14,16,19,40,70), y = c(480,490,520,540,575,580), 
         type = "p", pch = 20, cex = 0.6, col = 'yellow')
points(x = c(23,24,22,25,25,26,50,100,200), y = c(703.15,723.15,728.15,733.15,751.15,745.15,768.15,773.15,773.15), 
         type = "p", pch = 15, cex = 0.6, col = 'green')
points(x = c(22,24,20,28,34,30,52), y = c(700,720,730,732,745,750,754), 
         type = "p", pch = 17, cex = 0.6, col = 'brown')
points(x = c(24,25,24,26,30,50), y = c(700,719,725,730,744,765), 
         type = "p", pch = 8, cex = 0.6, col = 'violet')

legend(170,480, c("t = 0.1 nm","t = 0.2 nm","t = 0.7 nm","t = 1.0 nm","t = 1.5 nm"), 
       lty=c(1,5,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0,1.0),
       col=c("black","blue","green","red","brown"), cex=0.6, bg = "transparent", bty = "n")

legend(120,480, c("Referencia[33]","Referencia[35]","Referencia[34]","Referencia[36]","Referencia[37]",
                  "Referencia[36]"),
       pch = c(19,18,15,20,17,8), 
       col=c("black","blue","green","yellow","brown","pink"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = ancho, height = altura)
dev.off()

rm(x, y1, y2, y3, y4,y5)

#___________________________________________________________________________________________________

message('\tFigura 9(b)' )

x<-data.8a[,1]
y1<-data.8a[,2]
y1<-y1[y1 > 0.0]
y2<-data.8a[,3]
y2<-y2[y2 > 0.0]
y3<-data.8a[,8]
y3<-y3[y3 > 0.0]
y4<-data.8a[,11]
y4<-y4[y4 > 0.0]
y5<-data.8a[,16]
y5<-y5[y5 > 0.0]

jpeg(filename = 'graphs/figura_9(b).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x[min(which(data.8a[,2]>0)):max(which(data.8a[,2]>0))],y1, type = 'l', xlab = 'Tamaño[nm]', 
     ylab = 'Tc(K)', pch=20, axes = 0, ylim = c(0,800.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,260,10),labels=seq(0,260,10),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", col.axis = "black", 
     lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x[min(which(data.8a[,16]>0)):max(which(data.8a[,16]>0))], y5, type="l", pch=20, 
      col="brown", lty=2, lwd=1.0)
lines(x[min(which(data.8a[,11]>0)):max(which(data.8a[,11]>0))], y4, type="l", pch=20, 
      col="red", lty=3, lwd=1.0)
lines(x[min(which(data.8a[,8]>0)):max(which(data.8a[,8]>0))], y3,type="l", pch=20, 
      col="green", lty=4, lwd=1.0)
lines(x[min(which(data.8a[,3]>0)):max(which(data.8a[,3]>0))], y2,type="l", pch=20, 
      col="blue", lty=5, lwd=1.0)

points(x = c(23,24,25,36,25,44,50,60,75), y = c(700,719,736,745,752,760,765,763,764), 
         type = "p", pch = 19, cex = 0.6)
points(x = c(25,27,30,40,60,90,250), y = c(700,720,748,750,751,752,752), 
         type = "p", pch = 18, cex = 0.7, col = 'blue')
points(x = c(12,14,16,19,40,70), y = c(480,490,520,540,575,580), 
         type = "p", pch = 20, cex = 0.6, col = 'yellow')
points(x = c(23,24,22,25,25,26,50,100,200), y = c(703.15,723.15,728.15,733.15,751.15,745.15,768.15,773.15,773.15), 
         type = "p", pch = 15, cex = 0.6, col = 'green')
points(x = c(22,24,20,28,34,30,52), y = c(700,720,730,732,745,750,754), 
         type = "p", pch = 17, cex = 0.6, col = 'brown')
points(x = c(24,25,24,26,30,50), y = c(700,719,725,730,744,765), 
         type = "p", pch = 8, cex = 0.6, col = 'violet')

legend(170,400, c("t = 0.1 nm","t = 0.2 nm","t = 0.7 nm","t = 1.0 nm","t = 1.5 nm"), 
       lty=c(1,5,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0,1.0),
       col=c("black","blue","green","red","brown"), cex=0.6, bg = "transparent", bty = "n")

legend(120,400, c("Referencia[33]","Referencia[35]","Referencia[34]","Referencia[36]","Referencia[37]",
                  "Referencia[36]"),
       pch = c(19,18,15,20,17,8), 
       col=c("black","blue","green","yellow","brown","pink"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = ancho, height = altura)
dev.off()

rm(x, y1, y2, y3, y4,y5)

#___________________________________________________________________________________________________

message('\tFigura 10(a)' )

x<-data.9a[,1]
y1<-data.9a[,1010]
y2<-data.9a[,20]
y3<-data.9a[,6]
y4<-data.9a[,3]

jpeg(filename = 'graphs/figura_10(a).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Temperatura[K]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,100,10),labels=seq(0,100,10),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y4, type="l", pch=20, col="red", lty=2, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=3, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=4, lwd=1.0)

segments(x0 = x[which(data.9a[,3] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.9a[,3] == 'NaN')[1]-1], y1 = y4[which(data.9a[,3] == 'NaN')[1]-1], 
         col = 'red', lty = 2)
segments(x0 = x[which(data.9a[,6] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.9a[,6] == 'NaN')[1]-1], y1 = y3[which(data.9a[,6] == 'NaN')[1]-1], 
         col = 'green', lty = 3)
segments(x0 = x[which(data.9a[,20] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.9a[,20] == 'NaN')[1]-1], y1 = y2[which(data.9a[,20] == 'NaN')[1]-1], 
         col = 'blue', lty = 4)
segments(x0 = x[which(data.9a[,1010] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.9a[,1010] == 'NaN')[1]-1], y1 = y1[which(data.9a[,1010] == 'NaN')[1]-1], 
         col = 'black', lty = 1)

legend("topright", c("D = 20 μm","D = 200 nm","D = 60 nm","D = 30 nm"), 
       lty=c(1,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = ancho, height = altura)
dev.off()

rm(x, y1, y2, y3, y4)


#___________________________________________________________________________________________________

message('\tFigura 10(b)' )

x<-data.10a[,1]
y1<-data.10a[,1010]
y2<-data.10a[,20]
y3<-data.10a[,6]
y4<-data.10a[,3]

jpeg(filename = 'graphs/figura_10(b).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x,y1, type = 'l', xlab = 'Temperatura[K]', ylab = 'Polarización[C/m²]', pch=20, axes = 0, 
     ylim = c(0,1.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), col = "black", col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x, y4, type="l", pch=20, col="red", lty=2, lwd=1.0)
lines(x, y3, type="l", pch=20, col="green", lty=3, lwd=1.0)
lines(x, y2,type="l", pch=20, col="blue", lty=4, lwd=1.0)

segments(x0 = x[which(data.10a[,3] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.10a[,3] == 'NaN')[1]-1], y1 = y4[which(data.10a[,3] == 'NaN')[1]-1], 
         col = 'red', lty = 2)
segments(x0 = x[which(data.10a[,6] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.10a[,6] == 'NaN')[1]-1], y1 = y3[which(data.10a[,6] == 'NaN')[1]-1], 
         col = 'green', lty = 3)
segments(x0 = x[which(data.10a[,20] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.10a[,20] == 'NaN')[1]-1], y1 = y2[which(data.10a[,20] == 'NaN')[1]-1], 
         col = 'blue', lty = 4)
segments(x0 = x[which(data.10a[,1010] == 'NaN')[1]-1], y0 = 0.0, 
         x1 = x[which(data.10a[,1010] == 'NaN')[1]-1], y1 = y1[which(data.10a[,1010] == 'NaN')[1]-1], 
         col = 'black', lty = 1)

legend("topright", c("D = 20 μm","D = 200 nm","D = 60 nm","D = 30 nm"), 
       lty=c(1,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0), 
       col=c("black","blue","green","red"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = ancho, height = altura)
dev.off()

rm(x, y1, y2, y3, y4)

#___________________________________________________________________________________________________

message('\tFigura 11(a)' )

x<-data.11a[,1]
y1<-data.11a[,2]
y1<-y1[y1 > 0.0]
y2<-data.11a[,3]
y2<-y2[y2 > 0.0]
y3<-data.11a[,8]
y3<-y3[y3 > 0.0]
y4<-data.11a[,11]
y4<-y4[y4 > 0.0]
y5<-data.11a[,16]
y5<-y5[y5 > 0.0]

jpeg(filename = 'graphs/figura_11(a).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x[min(which(data.11a[,2]>0)):max(which(data.11a[,2]>0))],y1, type = 'l', xlab = 'Tamaño[nm]', 
     ylab = 'Tc(K)', pch=20, axes = 0, ylim = c(0,800.0), lwd = 1.0, cex.lab=0.6, lty = 1)

axis(1, pos = c(0,0), at=seq(0,260,10),labels=seq(0,260,10),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", col.axis = "black", 
     lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x[min(which(data.11a[,16]>0)):max(which(data.11a[,16]>0))], y5, type="l", pch=20, 
      col="brown", lty=2, lwd=1.0)
lines(x[min(which(data.11a[,11]>0)):max(which(data.11a[,11]>0))], y4, type="l", pch=20, 
      col="red", lty=3, lwd=1.0)
lines(x[min(which(data.11a[,8]>0)):max(which(data.11a[,8]>0))], y3,type="l", pch=20, 
      col="green", lty=4, lwd=1.0)
lines(x[min(which(data.11a[,3]>0)):max(which(data.11a[,3]>0))], y2,type="l", pch=20, 
      col="blue", lty=5, lwd=1.0)

legend(170,750, c("t = 0.1 nm","t = 0.2 nm","t = 0.7 nm","t = 1.0 nm","t = 1.5 nm"), 
       lty=c(1,5,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0,1.0),
       col=c("black","blue","green","red","brown"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = ancho, height = altura)
dev.off()

rm(x, y1, y2, y3, y4,y5)


#___________________________________________________________________________________________________

message('\tFigura 11(b)' )

x<-data.12a[,1]
y1<-data.12a[,2]
y1<-y1[y1 > 0.0]
y2<-data.12a[,3]
y2<-y2[y2 > 0.0]
y3<-data.12a[,8]
y3<-y3[y3 > 0.0]
y4<-data.12a[,11]
y4<-y4[y4 > 0.0]
y5<-data.12a[,16]
y5<-y5[y5 > 0.0]

jpeg(filename = 'graphs/figura_11(b).eps', width = ancho, height = altura, units = 'cm', res = 330)

plot(x[min(which(data.12a[,2]>0)):max(which(data.12a[,2]>0))],y1, type = 'l', xlab = 'Tamaño[nm]', 
     ylab = 'Tc(K)', pch=20, axes = 0, ylim = c(0,800.0), lwd = 1.0, cex.lab=0.6, lty =1)

axis(1, pos = c(0,0), at=seq(0,260,10),labels=seq(0,260,10),col = "black", 
     col.axis = "black", lwd = 1, cex.axis=0.55, tck= -0.05)
axis(2, pos = c(0,0), at=seq(0,800,50),labels=seq(0,800,50),col = "black", col.axis = "black", 
     lwd = 1, cex.axis=0.55, tck= -0.05)

lines(x[min(which(data.12a[,16]>0)):max(which(data.12a[,16]>0))], y5, type="l", pch=20, 
      col="brown", lty=2, lwd=1.0)
lines(x[min(which(data.12a[,11]>0)):max(which(data.12a[,11]>0))], y4, type="l", pch=20, 
      col="red", lty=3, lwd=1.0)
lines(x[min(which(data.12a[,8]>0)):max(which(data.12a[,8]>0))], y3,type="l", pch=20, 
      col="green", lty=4, lwd=1.0)
lines(x[min(which(data.12a[,3]>0)):max(which(data.12a[,3]>0))], y2,type="l", pch=20, col="blue", 
      lty=5, lwd=1.0)

legend(170,500, c("t = 0.1 nm","t = 0.2 nm","t = 0.7 nm","t = 1.0 nm","t = 1.5 nm"), 
       lty=c(1,5,4,3,2), 
       lwd=c(1.0,1.0,1.0,1.0,1.0),
       col=c("black","blue","green","red","brown"), cex=0.6, bg = "transparent", bty = "n")

#dev.copy(pdf,'graphs/graph_1.eps', width = ancho, height = altura)
dev.off()

rm(x, y1, y2, y3, y4,y5)

#___________________________________________________________________________________________________
# 
rm( list = ls() )
gc()
