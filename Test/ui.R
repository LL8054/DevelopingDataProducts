
shinyUI(pageWithSidebar(
    headerPanel("Geolocation"),
    sidebarPanel(
        selectInput("dataset", "Choose a map:", 
                    choices = c("World", "USA"))
    ),
    mainPanel(
        htmlOutput("view")
    )
)
)
