##Cleaning Leftover Data
rm(list=ls())

my.dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(my.dir)

##Loading packages
library(shiny)
library(shinydashboard)

#Creating the header, sidebar and body
header <- dashboardHeader(
  dropdownMenu(type = 'messages',
               messageItem(
                 from = 'Marcos',
                 message = 'Gremio maior do mundo',
                 href = 'https://socio.gremio.net/'
               )
               )
)

sidebar <- dashboardSidebar(
                    sidebarMenu(
                          menuItem(text = 'Data', tabName = 'data'),
                          menuItem(text = 'Dashboard', tabName = 'dashboard')
                              )
                            ) 

body <- dashboardBody(
                      tabItems(
                      tabItem(tabName = 'data',
                              tabBox(
                                title = "O Gremio é:",
                                tabPanel("Gigante"),
                                tabPanel("Imortal")
                              )), 
                      tabItem(tabName = 'dashboard',
                              'Gremio maior do mundo')
                    )
                    )

dropdownMenu()

#Creating the UI

ui <- dashboardPage(header, sidebar, body, title = 'TESTE', skin = 'blue')

server <- function(input, output) {}

shinyApp(ui, server)
