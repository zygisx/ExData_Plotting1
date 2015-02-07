data = read.csv(
  "data/household_power_consumption.txt",
  header=TRUE,
  sep=";",
  quote="", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

times <- strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M")

par(mfrow = c(2,2))
par(cex = 0.6)


plot(
  times,
  data$Global_active_power, 
  type="l", 
  xlab="", 
  ylab="Global Active Power"
)

plot(
  times,
  data$Voltage, 
  type="l", 
  xlab="datetime", 
  ylab="Voltage"
)



plot(
  times,
  data$Sub_metering_1, 
  type="n", 
  xlab="", 
  ylab="Energi sub metering"
)
points(times,data$Sub_metering_1, type="l")
points(times,data$Sub_metering_2, type="l", col="red")
points(times,data$Sub_metering_3, type="l", col="blue")
legend("topright", 
       pch="-",
       lty = 1,
       cex = 0.75,
       text.width = 59000,
       col = c("black", "red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       bty="n"
)

plot(
  times,
  data$Global_reactive_power, 
  type="l", 
  xlab="datetime", 
  ylab="Global_reactive_power"
)

dev.copy(png, file = "plot4.png")
dev.off() 