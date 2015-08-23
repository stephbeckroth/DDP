library(UsingR)
data(galton)

shinyServer(
  function(input, output) {
    output$time <- renderPrint({input$time})
    output$timespent <- renderPrint({(2+input$time)/2})
  }
)