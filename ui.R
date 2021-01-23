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

shinyUI(fluidPage(
  
  # Application title
  titlePanel("MPG Vs Variables"),
  
  sidebarPanel(
    
    selectInput("variable", "Variable:", 
                c("Number of cylinders" = "cyl",
                  "Number of forward gears" = "gear",
                  "Transmission" = "am",
                  "Gross horsepower" = "hp"))
  ),
  
  mainPanel(
    # Output: Formatted text for caption ----
    h3(textOutput("caption")),
    
    # Output: Plot of the requested variable against mpg ----
    plotOutput("mpgPlot")
  )
))