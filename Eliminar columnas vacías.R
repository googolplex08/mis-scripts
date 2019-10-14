library(dplyr)

#load an structure data
data=read.csv("dataset prueba.csv", header = TRUE)
str(data)
data$v5=as.character(data$v5)

### detect empty columns
lista=t(lapply(data, function(x) all( is.na(x) ) ))
omit=which(lista==TRUE)

####remove empty columns
data=select(data,-omit)
data
