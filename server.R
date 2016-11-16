library(shiny)
library(leaflet)

shinyServer(function(input, output) {
  leafletmap <- reactive({
    result <<- result %>%
      addMarkers(lng = input$lng, lat = input$lat, popup = paste0("<p>", input$popup, "</p>"))
    result
  })
  
  output$map <- renderLeaflet({
    leafletmap()
  })
})
