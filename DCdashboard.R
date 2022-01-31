##Limpeza dos dados
rm(list=ls())

my.dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(my.dir)