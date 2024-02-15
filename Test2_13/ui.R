#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
  fluidRow(
    column(8, wellPanel(
  titlePanel("Silly Geyser Data"))),
  column(4,
         tags$img(src="https://www.the-geyser.com/content/images/size/w256h256/2022/03/geyser-logo.png"))
  ),
 

    # Sidebar with a slider input for number of bins
    fluidRow(
        column(4,
            sliderInput("bins",
                        "Some bins for you:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        column(8,
            navbarPage("Plots",
              tabPanel("Plot1", plotOutput("distPlot")),
              tabPanel("Plot2", plotOutput("distPlot2"))
              
        )
        )
    ),
  
 fluidRow(
    column(4, tags$p("Kaitlyn St. C")),
    column(4, tags$a(href="stcha003@umn.edu", "stcha003@umn.edu")),
    column(4, tags$a(href="https://www.nps.gov/yell/planyourvisit/exploreoldfaithful.htm", "More information here!", target="_blank"))
)
)