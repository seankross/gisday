library(shiny)
library(leaflet)

result <- leaflet() %>%
  setView(lng = "-75.1953933", lat = "39.9483068", zoom = 13) %>%
  addTiles()