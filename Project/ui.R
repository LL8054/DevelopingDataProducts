shinyUI(pageWithSidebar(
        headerPanel("Rushing Projections"),
        sidebarPanel(
                sliderInput('Yards', 'How many yards rushed for this season', 
                            value=1700, min=1500, max=2500, step=25,),
                sliderInput('Attempts', 'How many attempts this season',
                            value=350, min=250, max=450, step=5,)
        ),
        mainPanel(
                plotOutput('newPlot')
        )
))