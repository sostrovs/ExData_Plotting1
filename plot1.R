source("prepare_data.R")

data <- prepare_data()

## Plot 1
hist(data$Global_active_power, col = "red",
     xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

## export file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()