library(shiny)

# Define UI 
ui <- fluidPage(
    h2(textOutput("currentTime"))
)


# Define server 
server <- function(input, output, session) {
    output$currentTime <- renderText({
        invalidateLater(1000, session)
        paste("The current time is", Sys.time())
    })
}


# Run the application 
shinyApp(ui = ui, server = server)
