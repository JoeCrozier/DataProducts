library(shiny)

shinyUI(pageWithSidebar(
  headerPanel(" Coast Guard Academy Physical Fitness Examination Results"),
  sidebarPanel(
    h3('Pick  Cadet Class Years and Events'),
    checkboxGroupInput("id2","Class Years", selected=c("2018","2017","2016","2015","2014","2013","2012","2011","2010","2009","2008","2007"),
                       c("2018"="2018",
                         "2017"="2017",
                         "2016"="2016",
                         "2015"="2015",
                         "2014"="2014",
                         "2013"="2013",
                         "2012"="2012",
                         "2011"="2011",
                         "2010"="2010",
                         "2009"="2009",
                         "2008"="2008",
                         "2007"="2007")),
    selectInput("event", "Event:", 
                 choices=list("Total Score"=1,"Pushup Score"=2)) 
    ),
  
    mainPanel(
      h3("Results by Class and Year"),
      plotOutput('plot'),
      br(),
      br(),
      p("4th Class is the equivalent of Freshmen, 3rd class Sophomores, etc..","This is a three part fitness exam consisting of Pushups, Situps and a Run.","Each part counts for a maximum of 100 pts, adding to 300 in Total Score")
      )
  ))