library(shiny)
library(leaflet)

shinyUI(fluidPage(
  titlePanel("Your Own Add Markers!"),
  sidebarLayout(
    sidebarPanel(
      numericInput("lat", "Latitude", value = 39.9523303, step = .001),
      numericInput("lng", "Longitude", value = -75.1927193, step = .001),
      textInput("popup", "Label", value = "You are here!"),
      submitButton("Add Marker")
    ),
    # Show a plot of the generated distribution
    mainPanel(
      leafletOutput("map")
    )
  )
))