library(lubridate)
library(dplyr)

readPowerConsumption <- function(file) {
    pc <- read.table(file, sep = ";", na.strings = "?", header = TRUE)
    pc <- pc[grep("^(1|2)\\/2\\/2007", pc$Date),]
    pc <- mutate(pc, DateTime = paste(Date, Time))
    pc$DateTime <- dmy_hms(pc$DateTime)
    pc
}

# pc <- readPowerConsumption("household_power_consumption.txt")

# hist(pc$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red")
# title(main = "Global Active Power")

