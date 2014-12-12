library(shiny)
library(ggplot2)

All <- read.table("All.csv", header=TRUE, quote="\"")
## use checkbox input to erase variables from x data frames.
shinyServer(
  function(input,output){
     output$plot<- reactivePlot(function() {
       # check for the input variable, whats it called?
       if (input$event == "1") {
         # am
         x<-aggregate(All$NewTotalScore,list(All$ClassYear, All$Class),mean)
         x$Group.2<-as.factor(x$Group.2)
         x<-x[which(x$Group.2 %in% input$id2),]
         t<-ggplot(x,aes(x=Group.1,y=x,colour=Group.2, label=Group.2))+geom_point()+geom_text()+labs(title="Total Score",x="Class Year",y="Class Average Total Score out of 300" )
         
       }
       else {
         # pushups
         x<-aggregate(All$NewPushUpScore,list(All$ClassYear, All$Class),mean)
         x$Group.2<-as.factor(x$Group.2)
         x<-x[which(x$Group.2 %in% input$id2),]
         t<-ggplot(x,aes(x=Group.1,y=x,colour=Group.2, label=Group.2))+geom_point()+geom_text()+labs(title="Pushups",x="Class Year",y="Class Average Pushup Score out of 100" )
         
       }
       
       
       print(t)
     }) 
       
       
     }
     
     
     
     ) 
  