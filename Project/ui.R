# ui.R

shinyUI(pageWithSidebar(
        headerPanel("Rushing Projections"),
        sidebarPanel(
                sliderInput('Yards', 'How many yards rushed for this season', 
                            value=1700, min=1500, max=2500, step=25,),
                sliderInput('Attempts', 'How many attempts this season',
                            value=350, min=250, max=450, step=5,),
                submitButton('Submit')
                
        ),
        mainPanel(
                plotOutput('newPlot'),
                h3('Predicted rushing yards next year: '),
                verbatimTextOutput("renderYds"),
                h3('Predict attempts next year: '),
                verbatimTextOutput("renderAtt")
                
        )
))