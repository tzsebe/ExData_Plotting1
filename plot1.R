# Load the file and adjust the date type...
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", "select * from file where Date in ('1/2/2007', '2/2/2007')", header = TRUE, sep = ";")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# Generate Plot
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
