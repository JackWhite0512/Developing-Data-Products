library(plotly)
library(colourpicker)
library(ggplot2)
library(shiny)
library(shinycustomloader)
library(DT)

shinyUI(fluidPage(
    
    # App title ----
    titlePanel("Car selection based on horsepower and miles per gallon using Shiny and ggplot"),
    
    # Sidebar layout with input and output definitions ----
    sidebarLayout(
        
        # Sidebar panel for inputs ----
        sidebarPanel(
            
            # Input: Select the random distribution type ----
            checkboxInput("show_xlab", "Show/Hide X Axis Label", TRUE),
            checkboxInput("show_ylab", "Show/Hide Y Axis Label", TRUE),
            sliderInput("hp","Select minimum Horse Power",52,335,52)
            
            
        ),
        
        # Main panel for displaying outputs ----
        mainPanel(
            h3("Select a car based on horse power and miles per gallon"),
                plotOutput("plot1") )
                      
                        
            )
)

)