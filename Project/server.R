# server.R

library(UsingR)
library(xlsx)
library(ggplot2)

rawdata <- read.xlsx("RushingYards.xlsx", sheetIndex=1)

data <- rawdata[c(2:21),]
rownames(data) <- NULL

# Att
set.seed(1)
fitAtt <- lm(Att.Next.Yr ~ Yards + Attempts, data)

# Yds
set.seed(1)
fitYds <- lm(Yards.Next.Yr ~ Yards + Attempts, data)

shinyServer(
        function(input, output) {
            
            
            
            output$newPlot <- renderPlot({
                        iYards <- input$Yards
                        iAttempts <- input$Attempts
                
                        test <- data.frame(iYards,iAttempts)
                        names(test) <- c("Yards", "Attempts")
                        predictAtt <- predict(fitAtt, test)
                        predictYds <- predict(fitYds, test)
                        
                        qplot(data=data, x=Attempts, y=Yards) + 
                            geom_point(aes(x=predictAtt, y=predictYds, color="Estimate"))
                        
                        
                        
                  })
            
            output$renderYds <- renderPrint({predictYds})
            
            output$renderAtt <- renderPrint({predictAtt})
        }
)