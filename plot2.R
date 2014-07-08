data = read.csv(
  "data/household_power_consumption.txt",
  header=TRUE,
  sep=";",
  quote="", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))


plot(
  strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M"),
  data$Global_active_power,
  type="l",
  xlab="",
  ylab="Global Active Power (kilowatts)"
)

dev.copy(png, file = "plot2.png")
dev.off()