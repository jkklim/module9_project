library(shinydashboard)

ui <- dashboardPage(skin="green",
  
  
    dashboardHeader(title = "Casino DashBoard"),
    dashboardSidebar(),
    
    dashboardBody(
            # Boxes need to be put in a row (or column)
            fluidRow(
                box(title ="Histogram", background = "maroon",  solidHeader = TRUE, collapsible = TRUE, plotOutput("plot1", height = 350)),
                
                box(title = "Inputs", background="black" , sliderInput("slider", "Number of Dice Thrown", 2, 5, 4),
                    
                    h3("The highest likeihood of Sum based (on the number of dice thrown) PER EACH THROW"),
                    verbatimTextOutput("mean")
                    )
                ))
     
)


