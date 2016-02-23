#___________________________________________________________________________________________________
# Carga de datos

wd<-getwd()

options( stringsAsFactors= FALSE )

#___________________________________________________________________________________________________
# Carpetas, parámetros  y funciones
if ( !file.exists( 'RData' ) ) {
   dir.create( 'RData' )
}

#___________________________________________________________________________________________________
# Carga de datos de Figura 6(a)

data.1a <- read.table( paste(wd,'/data/', 'base1a.data', sep=''), header=TRUE)  

#___________________________________________________________________________________________________
# Carga de datos de Figura 6(b)

data.2a<- read.table( paste(wd,'/data/', 'base2a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 7(a)

data.3a<- read.table( paste(wd,'/data/', 'base3a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 7(b)

data.4a<- read.table( paste(wd,'/data/', 'base4a.data', sep=''), header=TRUE)


#___________________________________________________________________________________________________
# Carga de datos de Figura 8(a)

data.5a<- read.table( paste(wd,'/data/', 'base5a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 8(b)

data.6a<- read.table( paste(wd,'/data/', 'base6a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 9(a)

data.7a<- read.table( paste(wd,'/data/', 'base7a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 9(b)

data.8a<- read.table( paste(wd,'/data/', 'base8a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 10(a)

data.9a<- read.table( paste(wd,'/data/', 'base9a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 10(b)

data.10a<- read.table( paste(wd,'/data/', 'base10a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 11(a)

data.11a<- read.table( paste(wd,'/data/', 'base11a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Carga de datos de Figura 12(a)

data.12a<- read.table( paste(wd,'/data/', 'base12a.data', sep=''), header=TRUE)

#___________________________________________________________________________________________________
# Guardando datos reportados
message( '\t\tGuardando data' )

save( data.1a, data.2a, data.3a, data.4a, data.5a, data.6a, data.7a, data.8a, data.9a, data.10a,
      data.11a, data.12a, file = 'RData/data.RData' )

#___________________________________________________________________________________________________
# 
rm( list = ls() )
gc()
