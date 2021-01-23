#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

x <- 0
# Define server logic required to show the test
library(shiny)
library(plotly)
mpgData <- mtcars
mpgData$am <- factor(mpgData$am, labels = c("Automatic", "Manual"))
shinyServer(function(input, output) {
  
  formulaText <- reactive({
    paste("MPG vs ", input$variable)
  })
  
  output$caption <- renderText({
    formulaText()
  })
  output$mpgPlot <- renderPlot({
    ggplot(mpgData, aes_string(y=input$variable, x="mpg")) + geom_point()
  })
  
})
