#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that shows the input text
shinyUI(pageWithSidebar(
  headerPanel("Hello Shiny!"),
  sidebarPanel(
    textInput(inputId="text1", label = "User Name"),
    textInput(inputId="text2", label = "Password") ,
  sliderInput("bins",
              "Number of bins:",
              min = 1,
              max = 50,
              value = 30)),
  
 
  mainPanel(
    p('User Name'), textOutput('text1'),
    p('Password'), textOutput('text2'),
    p('Output text3'), textOutput('text3'),
    p('Outside text'), textOutput('text4'),
    p('Inside text, but non-reactive'),
    textOutput('text5'),
    plotOutput("distPlot")
  ) ))
