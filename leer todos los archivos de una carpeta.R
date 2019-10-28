##load directory
setwd("Mi carpeta")

#load libraries
library(openxlsx)

##list data
lista=dir(path = "Mi carpeta", pattern = "xlsm")


##load data
for (i in 1:length(lista)) {
  names=paste("data",i,sep = "_")
  assign(names,
         read.xlsx(lista[i], fillMergedCells = TRUE,colNames = FALSE, 
                   sheet = "Matriz de Riesgo - Control", startRow = 5))
}
