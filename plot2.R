source("prepare_data.R")

data <- prepare_data()

## Plot 2
plot(data$Date_Time, data$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

## export file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()