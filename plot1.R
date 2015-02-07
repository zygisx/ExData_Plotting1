data = read.csv(
  "data/household_power_consumption.txt", 
  header=TRUE, 
  sep=";",
  quote="", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

par(mar = c(6, 6, 2, 2))

hist(
  data$Global_active_power, 
  col="red", 
  main="Global Active Power", 
  xlab="Global Active Power (kilowatts)", 
  ylab="Frequency", 
  breaks=15
)

dev.copy(png, file = "plot1.png")
dev.off() 