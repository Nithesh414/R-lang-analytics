ott<-data.frame(
  day=1:12,
  watch_hours=c(1.5,2,2.2,3,3.5,4,4.2,5,5.5,6,6.5,7)
  
)
plot( ott$day,ott$watch_hours,type="l",main="movie watch hours",xlab = "days",ylab="watch hours")

barplot(ott$day,ott$watch_hours,names.arg=ott$day,col=c("red","blue","black"),labels=ott$days))

maxi<-ott$day[which.max(ott$watch_hours)]
maxi
paste("maximum watch hour is:",maxi)


                                      
