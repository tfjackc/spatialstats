library(shiny)
# Define UI for application that draws a histogram
ui <- fluidPage(
    includeHTML("Les2_CrimeAnalysis.html")
  )


# Define server logic required to draw a histogram
server <- function(input, output) {
  
  
}
# Run the application 
shinyApp(ui = ui, server = server)




