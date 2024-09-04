
# SE COLOCA LA RUTA DONDE ESTAN LOS ARCHIVOS

rc <- "C:/Users/ERITK S. BASTOS/Desktop/Insumos/ATRASO/"
rc <- "SE COLOCA LA RUTA DE LOS INUSMOS"

# SE COLOCA LA FECHA DEL ACTUAL ###AA MM DD### TODO JUNTO

date0 <- as.character(230929)

# SE COLOCA LA FECHA DEL ANTERIOR ###AA MM DD### TODO JUNTO

date1 <- as.character(230901)

# SE SEPARA LAS FECHAS EN NUMERO DE DOS

da <- str_sub(date0, 1, 2)
dm <- str_sub(date0, 3, 4)
dd <- str_sub(date0, 5, 6)

# SE SEPARA LA FECHA COMPLETA

fecha0 <- paste(20,da,"-",dm,"-",dd)
fecha0 <- gsub(" ","",fecha0)
fecha0 <- as.Date(fecha0,"%Y-%m-%d")
fecha0 <- as.data.frame(fecha0)

# SE CREA EL NOMBRE DE LA RUTA COMPLETA 

r0 <- gsub(" ","", paste('IBSRM14FTB_',date0,'.TXT'))
r1 <- gsub(" ","", paste('IBSRM14FTB_',date1,'.TXT'))

# SE ELIMINA EL ESPACIOS QUE ESTA DE MAS 

rf0 <- gsub("/ ","/", paste(rc,r0))
rf1 <- gsub("/ ","/", paste(rc,r1))

# SE LEE EL ARCHIVO

tod0 <- read.delim(rf0, header = FALSE, sep = "©", dec = ",")
tod1 <- read.delim(rf1, header = FALSE, sep = "©", dec = ".")