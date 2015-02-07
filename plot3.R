data = read.csv(
  "data/household_power_consumption.txt",
  header=TRUE, 
  sep=";",
  quote="", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

times <- strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M")

par(mfrow = c(1,1), cex = 0.75, mar = c(2, 6, 2, 2))


plot(
  times,
  data$Sub_metering_1, 
  type="n", 
  xlab="", 
  ylab="Energy sub metering"
)
points(times,data$Sub_metering_1, type="l", col="black")
points(times,data$Sub_metering_2, type="l", col="red")
points(times,data$Sub_metering_3, type="l", col="blue")
legend("topright", 
       pch="-",
       lty = 1,
       text.width = 40000,
       cex = 0.9,
       col = c("black", "red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
)
dev.copy(png, file = "plot3.png")
dev.off() 