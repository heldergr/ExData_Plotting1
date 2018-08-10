source("power.comsumption.R")
pc <- readPowerConsumption("household_power_consumption.txt")

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

plot(pc$DateTime, pc$Global_active_power, type = "n", ylab = "Global Active Power", xlab = "")
lines(pc$DateTime, pc$Global_active_power)

plot(pc$DateTime, pc$Voltage, type = "n", ylab = "Voltage", xlab = "datetime")
lines(pc$DateTime, pc$Voltage)

plot(pc$DateTime, y = pc$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(pc$DateTime, y = pc$Sub_metering_1)
lines(pc$DateTime, y = pc$Sub_metering_2, col = "red")
lines(pc$DateTime, y = pc$Sub_metering_3, col = "blue")
legend("topright", lwd = 1, pch=c(NA,NA,NA),col=c("black", "red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(pc$DateTime, pc$Global_reactive_power, type = "n", ylab = "Global_reactive_power", xlab = "datetime")
lines(pc$DateTime, pc$Global_reactive_power)

dev.off()
