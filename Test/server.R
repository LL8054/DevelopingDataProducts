library(googleVis)
library(shiny)
shinServer(function(input, output) {
        observe({
            if(input$dataset=="World"){
                df = readRDS("./DATA/countries.RDS")
                output$view <- renderGvis({
                    gvisGeoMap(df, locationvar="country", numvar="count",
                               options=list(dataMode="regions"))
                })
            }else{
                df = readRDS("./DATA/USA.RDS")
                output$view <- renderGvis({
                    gvisGeoMap(df,  locationvar="metro_code", numvar="count",
                               options=list(dataMode="regions", region="us_metro"))
                })
            }
        })
    })