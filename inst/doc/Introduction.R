## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----ui_file------------------------------------------------------------------
# library(shiny)
# library(visNetwork)
# 
# # Define UI for application that draws a histogram
# shinyUI(fluidPage(
# 
#    # Application title
#    titlePanel("MITRE Shield Explorer"),
#    # Show a plot of the generated distribution
#    mainPanel(
#        visNetworkOutput("shieldnetwork")
#    )
# ))

## ----server_file--------------------------------------------------------------
# library(shiny)
# library(mitre)
# library(visNetwork)
# 
# mitredata <- mitre::getLatestDataSet()
# shieldnet <- mitredata$standards$shield$shieldnet
# 
# shinyServer(function(input, output) {
# 
#    output$shieldnetwork <- renderVisNetwork({
#       ggnet <- visNetwork(nodes = shieldnet$nodes,
#                           edges = shieldnet$edges)
#       ggnet %>%
#          visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE) %>%
#          visLayout(randomSeed = 123)
#    })
# })

## ----runapp-------------------------------------------------------------------
# shiny::runApp()

