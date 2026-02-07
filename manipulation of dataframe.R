data <- read.csv("Book1.csv")

data
data<-add_row(
  data,
  example=5,
  sky="sunny",
  airtemp="warm",
  humditiy="normal",
  wind="strong",
  water="warm",
  forecast="same",
  enjoysport="yes"
)

