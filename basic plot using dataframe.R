phone_sales <- data.frame(
  Quarter = c("Q1","Q2","Q3","Q4","Q1","Q2","Q3","Q4"),
  Brand = c("Alpha","Alpha","Alpha","Alpha","Nova","Nova","Nova","Nova"),
  Ads_Spend = c(20,25,30,35,15,18,22,28),
  Units_Sold = c(400,480,550,650,300,360,420,520)
)


plot(phone_sales$Quarter, phone_sales$Units_Sold,
     type = "b",
     xlab = "Quarter",
     ylab = "Units Sold",
     main = "Units Sold Across Quarters")

