# Load the file and adjust the date type...
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", "select * from file where Date in ('1/2/2007', '2/2/2007')", header = TRUE, sep = ";")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# Generate Plot
png(filename = "plot1.png", width = 480, height = 480, bg = "transparent")
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
