file <- "./household_power_consumption.txt"
datatable <- read.csv(file, header=T, sep=';', na.strings="?",nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
datatable_Date <- as.Date(datatable$Date, format="%d/%m/%Y")
plot3data <- datatable[datatable$Date >= "2007-02-01" & datatable$Date <= "2007-02-02"]
datetime <- paste(as.Date(plot3data$Date), plot3data$Time)
plot3_datetime <- as.POSIXct(datetime)
with(plot3data, {plot(Sub_metering_1~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="") lines(Sub_metering_2~plot3_datetime,col='Red')
lines(Sub_metering_3~plot3datetime,col='Blue')})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)
png 
5 
dev.off()
