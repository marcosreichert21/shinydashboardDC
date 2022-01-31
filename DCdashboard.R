##Cleaning Leftover Data
rm(list=ls())

my.dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(my.dir)

##Loading packages
library(shiny)
library(shinydashboard)

#Creating the header, sidebar and body
header <- dashboardHeader()
sidebar <- dashboardSidebar() 
body <- dashboardBody()

#Creating the UI

ui <- dashboardPage(header, sidebar, body, title = 'TESTE', skin = 'blue')

server <- function(input, output) {}

shinyApp(ui, server)
