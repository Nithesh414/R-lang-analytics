df<-read.csv("C:/Users/Nithesh/Downloads/Play.csv")

df<-df[-(1:10),]
data<-data.frame(
  Outlook="sunny",
  Temperature="Mild",
  Humidity="normal",
  Wind="Strong",
  Play.Tennis="yes"
)
rbind(df,data)
