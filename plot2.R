source("power.comsumption.R")
pc <- readPowerConsumption("household_power_consumption.txt")

png(filename = "plot2.png", width = 480, height = 480)
plot(pc$DateTime, pc$Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(pc$DateTime, pc$Global_active_power)
dev.off()