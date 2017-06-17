prepare_data <- function() {
    colClasses <- c(Voltage="numeric", Global_active_power="numeric",
                    Global_intensity="numeric",Sub_metering_1="numeric",
                    Sub_metering_2="numeric",Sub_metering_3="numeric",
                    Global_active_power="numeric",Global_reactive_power="numeric")
    
    data <- read.table("household_power_consumption.txt", 
                       header=TRUE, 
                       sep=";",
                       dec=".", 
                       stringsAsFactors=FALSE, 
                       na.strings = "?",
                       colClasses=colClasses)
    
    data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
    data_selected <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
    data_selected$Date_Time <- as.POSIXct(strptime(paste(data_selected$Date, ' ', data_selected$Time), '%Y-%m-%d %H:%M:%S'))
    data_selected
}