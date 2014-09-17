# server.R

library(maps)
library(mapproj)

source('helpers.R')
counties <- readRDS("data/counties.rds")

shinyServer(function(input, output) {

  output$text1 <- renderText({
    "You have selected this"
  })

  output$text2 <- renderText({
    paste("you have selected", input$var)
  })

  output$text3 <- renderText({
    paste("the range is", input$range[1], 'to', input$range[2])
  })

  output$map <- renderPlot({
    data <- switch(input$var,
                   "Percent White" = counties$white,
                   "Percent Black" = counties$black,
                   "Percent Hispanic" = counties$hispanic,
                   "Percent Asian" = counties$asian)

    color <- switch(input$var,
                    "Percent White" = "darkgreen",
                    "Percent Black" = "black",
                    "Percent Hispanic" = "darkorange",
                    "Percent Asian" = "darkviolet")

    legend <- switch(input$var,
                     "Percent White" = "% White",
                     "Percent Black" = "% Black",
                     "Percent Hispanic" = "% Hispanic",
                     "Percent Asian" = "% Asian")

    percent_map(var=data, color=color, legend.title=legend,
                max=input$range[2], min=input$range[1] )
  })

}
            )
