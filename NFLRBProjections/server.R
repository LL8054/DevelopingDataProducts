# server.R

library(UsingR)
library(xlsx)
library(ggplot2)
library(rJava)

rawdata <- read.xlsx("data/RushingYards.xlsx", sheetIndex=1)
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
            
            predictYds <- function(Y, A){
                test <- data.frame(Y, A)
                names(test) <- c("Yards", "Attempts")
                predict(fitYds, test)
            }
            
            predictAtt <- function(Y, A){
                test <- data.frame(Y, A)
                names(test) <- c("Yards", "Attempts")
                predict(fitAtt, test)
            }
          
            output$newPlot <- renderPlot({
                        
                        newYards <- predictYds(input$Yards, input$Attempts)
                        newAttempts <- predictAtt(input$Yards, input$Attempts)
                        qplot(data=data, x=Attempts, y=Yards) + 
                            geom_point(aes(x=newAttempts, y=newYards, color="Estimate"))
                        
                  })
            
            output$renderYds <- renderPrint({predictYds(input$Yards, input$Attempts)})
            
            output$renderAtt <- renderPrint({predictAtt(input$Yards, input$Attempts)})
        }
)