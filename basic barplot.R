icecream<-data.frame(
  day=1:10,
  temper=c(28,29,30,31,32,33,34,35,36,37),
  sales=c(120,135,150,165,180,205,230,260,290,320)
)
icecream
py<-plot(icecream$temper,icecream$sales,type="l",main="icecreamsales",xlab="temp",ylab="sales",xlim = c(28,38),ylim = c(120,320))

plot(icecream$day,icecream$sales,type="b",main="sales vs days",xlab = "days",ylab = "sales")


barplot(icecream$sales,names.arg = icecream$day,col ="orange")
aver<-sum(icecream$sales)/length(icecream$day)
aver
