library(plotly)
library(colourpicker)
library(ggplot2)
library(shinycustomloader)
library(DT)
library(shiny)

shinyServer(function(input, output) {
    filtered_data <- reactive({
        

        sub <- subset(
            mtcars,
            hp >= input$hp[1]

        )

        sub
    })

    
    output$plot1 <- renderPlot({
        
        sub <- filtered_data()
        xlab <- ifelse(input$show_xlab, "Horse Power", "")
        ylab <- ifelse(input$show_xlab, "Miles Per Gallon", "")
ggplot(sub, aes_string(y = sub$mpg, x= sub$hp)) +
            labs(x = xlab, y = ylab) +
                geom_point(size = sub$wt) +
                ggtitle("Thicker points equal heavier cars, while thinner points equal lighter cars")
             
    
        })
    })
