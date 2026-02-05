name<-c("mark1","mark2","mark3","mark4","mark5")
tests<-c(1,2,3,4,5)
df<- data.frame( 
nithesh=c(99,96,97,98,92),
b=c(98,97,96,99,92)
)
rownames(df)<-name
as.matrix(df)
tf<-t(df)
as.data.frame(tf)
cf<-data.frame(
  nithesh=(sum(df$nithesh)/5),
  b=(sum(df$b)/5)
)
average<- sum(df$nithesh)/5
rownames(cf)<-"average"
cg<-rbind(df,cf)
cg
cs<-as.matrix(cg)
ts<-t(cs)
py<-plot(tests,df$nithesh,type="b",col="red",xlab="tests",ylab="marks",
     main = "mark",ylim=c(90,100)
     )
