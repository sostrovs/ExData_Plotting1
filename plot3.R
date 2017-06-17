source("prepare_data.R")

data <- prepare_data()

## Plot 3
plot(data$Date_Time, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
points(data$Date_Time, data$Sub_metering_2, type = "l", col = "red")
points(data$Date_Time, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = c(1,1,1), lwd = c(2,2,2), col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## export file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()