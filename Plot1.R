data <- read.table("household_power_consumption.txt", sep = ";")
names(data) <- c("Date", "Time","ActivePower", "ReactivePower", "Voltage","Intensity","Sub_metering_1", "Sub_metering_2","Sub_metering_3")
useful <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
hist(as.numeric(as.character(useful$ActivePower)), main = "Global Active Power" , xlab = "Global Active Power (kilowatts)", col = "red")