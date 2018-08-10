source("power.comsumption.R")
pc <- readPowerConsumption("household_power_consumption.txt")

png(filename = "plot1.png", width = 480, height = 480)
hist(pc$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.off()