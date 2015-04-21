# ui.R

shinyUI(navbarPage("NFL Rushing Projections",
        tabPanel("Projections",
            sidebarPanel(
                h3('Instructions'),
                p("Slide the inputs to select this year's yards and attempts and then click submit
                  to generate estimates for next year's yards and attempts.  The estimate will be 
                  plotted as a red dot on the chart and also printed as text below the chart.*",
                  style = "font-family: 'baskerville'; font-si16pt"),
                sliderInput('Yards', 'How many yards rushed for this season', 
                            value=1700, min=1500, max=2500, step=25,),
                sliderInput('Attempts', 'How many attempts this season',
                            value=350, min=250, max=450, step=5,),
                submitButton('Submit'),
                p("*Careful not to drag the slider too far off to the left or right as there's a bug
                  in the most recent version of Shiny that will return 'NaN' if that happens even 
                though the slider's minimums and maximums are set.  If that does happen just reload 
                  the app. You can read more about the bug at", 
                  style = "font-family: 'baskerville'; font-si4pt"),
                a(href="http://stackoverflow.com/questions/28866836/having-problems-with-sliderinput-in-r-shiny-getting-nans",
                  "Stack Overflow")
                
            ),
            mainPanel(
                plotOutput('newPlot'),
                h3('Predicted rushing yards next year: '),
                verbatimTextOutput("renderYds"),
                h3('Predict attempts next year: '),
                verbatimTextOutput("renderAtt")
                
            )
        ),
        tabPanel("Documentation",
                 mainPanel(
                     h3('Explanation'),
                     p("One of the biggest decisions the Dallas Cowboys had to make in the 2015 NFL 
                        offseason was whether or not to re-sign RB DeMarco Murray to a lucrative
                        long-term contract.  Though he had lead the NFL in rushing with 1,845 yards 
                        in 2014-2015, Murray also had an extensive history of being injured and missing 
                       games.", 
                       style = "font-family: 'baskerville'; font-si16pt"),
                     p("Another factor the Cowboys front office had to consider was the historical
                       performance of running backs the year after rushing for 1800+ yards.  Does
                       punishment suffered from a high work rate and wear and tear on the 
                       body after so many games affect future performance? This app aims to provide
                        insight into that question by looking at the historical performances of running
                       backs the year after gaining 1800+ yards.", 
                       style = "font-family: 'baskerville'; font-si16pt"),
                     p("Admittedly, there are many other factors that affect a running back's performance. 
                       This study only concerns itself with two:  # yards from the 1800+ yard season and
                        # attempts from that season.  Given those two numbers, this app comes up with a 
                        prediction for what the production for next season should be.  With an r squared 
                        number of .31 it shows those two factors explain only 31% of the variance of 
                        historical output the next year, so obviously this is a very crude way of 
                        going about it but it's a fun little exercise.",
                       style = "font-family: 'baskerville'; font-si16pt"),
                     p("The data are compiled from",
                       style = "font-family: 'baskerville'; font-si16pt"),
                     a(href = "http://www.nfl.com/stats/player", "NFL player data")
                 )
        )
                 
        )
)