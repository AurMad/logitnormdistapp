server <- function(input, output){

    mean_logit <- reactive(input$mean_logit)
    sd_logit   <- reactive(input$sd_logit)

    output$PropDist <- renderPlot({

        if(!is.nan(dnorm_logit(.5, mean_logit(), sd_logit()))){

            curve(dnorm_logit(x, mean_logit(), sd_logit()),
                  ylab = "Density",
                  xlab = "Probability",
                  main = paste(
                      "Mean logit = ",
                      round(mean_logit(), 2),
                      " ; Sd logit = ",
                      round(sd_logit(), 2)
                  ))

        } else {

            points(0, 0, pch = "x", col = "red")
        }

    })

    output$PropDist1 <- renderPlot({

        curve(dnorm_logit(x, input$LogitnormDistMu, input$LogitnormDistSd),
              xlab = "Probability",
              ylab = "Density")

    })

}
