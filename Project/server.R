library(UsingR)

library(xlsx)
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
                        plot(x=data$Attempts, y=data$Yards, xlab='Attempts', ylab='Yards', 
                             col='lightblue', main='Rushing')
                        
                        Yards <- input$yards
                        Attempts <- input$attempts
                        
                        test <- data.frame(Yards,Attempts)
                        predictAtt <- predict(fitAtt, test)
                        predictYds <- predict(fitYds, test)
                        
                        points(x=predictAtt, y=predictYds, pch=19, col="#CC5500")
                    
                        text(63, 150, paste("estimated next year's yards = ", predictYds))
                        text(63, 140, paste("estimated next year's attempts = ", predictAtt))
                })
        }
)