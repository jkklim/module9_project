library(shinydashboard)
server <- function(input, output) {
    
    
    output$plot1 <- renderPlot({
    
      
      roll <-function() 
      {
        die<- 1:6
        dice<-(sample(die,size=input$slider, replace=TRUE, prob=c(1/6,1/6,1/6,1/6,1/6,1/6)))
        sum(dice)
      }
      
      roll_many_times <- replicate(10000,roll())
      
      
      
      hist(roll_many_times, freq=FALSE, col=rainbow(3))
      lines(density(roll_many_times), lty=2)
      
      output$mean <- renderPrint({round(mean(roll_many_times),0)})
      
      
    })
    
}



