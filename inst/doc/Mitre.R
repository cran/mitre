## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----shiny_demo---------------------------------------------------------------
# library(shiny)
# library(visNetwork)
# library(mitre)
# 
# mitredata <- mitre::getLatestDataSet()
# shieldnet <- mitredata$standards$shield$shieldnet
# 
# # Define UI for application that draws a histogram
# ui <- shinyUI(fluidPage(
#    # Application title
#    titlePanel("MITRE Shield Explorer"),
#    # Show a plot of the generated distribution
#    mainPanel(
#        visNetworkOutput("shieldnetwork")
#    )
# ))
# 
# ## server.R
# server <- shinyServer(function(input, output) {
#    output$shieldnetwork <- renderVisNetwork({
#       ggnet <- visNetwork(nodes = shieldnet$nodes,
#                           edges = shieldnet$edges)
#       ggnet %>%
#          visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE) %>%
#          visLayout(randomSeed = 123)
#    })
# })
# 
# shiny::shinyApp(ui, server)

