# setwd
library(lubridate)

getPowerComsumptionDate <- function(file) {
    dates <- read.table(file, sep = ";", col.names = c("Date"))
    grep("2007\\-02\\-0(2|1)", dates$Date)
}

readPowerConsumption <- function(file) {
    read.table(file, sep = ";", na.strings = "?", header = TRUE)
}

pc <- readPowerConsumption("household_power_consumption.txt")
b <- pc[grep("^(1|2)\\/2\\/2007", pc$Date),]
b$Date <- dmy(b$Date)
b$Time <- hms(b$Time)

hist(b$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red")
title(main = "Global Active Power")
