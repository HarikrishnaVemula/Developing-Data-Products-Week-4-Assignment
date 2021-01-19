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
x <<- x + 1 # note x should be defined before you do the runApp()
y <<- 0 # note <<- assigns globally
shinyServer(
  function(input, output) {
    y <<- y + 1
    output$text1 <- renderText({input$text1})
    output$text2 <- renderText({input$text2})
    output$text3 <- renderText({as.numeric(input$text1)+1})
    output$text4 <- renderText(y)
    output$text5 <- renderText(x)
    output$distPlot <- renderPlot({
      
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2]
      bins <- seq(min(x), max(x), length.out = input$bins + 1)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'darkgray', border = 'white')
      
    })
    
  } )
