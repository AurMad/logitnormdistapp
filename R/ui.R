ui <- shiny::fluidPage(

    shiny::sidebarPanel(
        shiny::h2("Parameters"),
        shiny::h3(shiny::HTML("&mu;<sub>logit</sub> and &sigma;<sub>logit</sub> from curve")),
        shiny::sliderInput(
            inputId = "mean_logit",
            label = "Mean",
            min = -5, max = 5,
            step = .1,
            value = 0
        ),
        shiny::sliderInput(
            inputId = "sd_logit",
            label = "Standard deviation",
            min = 0, max = 10,
            step = .001,
            value = .1
        ),
        shiny::h3(shiny::HTML("Curve from &mu;<sub>logit</sub> and &sigma;<sub>logit</sub>")),
        shiny::numericInput(
            inputId = "LogitnormDistMu",
            label = shiny::HTML("&mu;<sub>logit</sub>"),
            value = 0,
            step = .1
        ),
        shiny::numericInput(
            inputId = "LogitnormDistSd",
            label = shiny::HTML("&sigma;<sub>logit</sub>"),
            value = 1,
            step = .1
        )
    ),
    shiny::mainPanel(
        shiny::plotOutput(
            outputId = "PropDist"
        ),
        shiny::plotOutput(
            outputId = "PropDist1"
        )
    ))
