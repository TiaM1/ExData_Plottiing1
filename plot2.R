File <- "./household_power_consumption.txt"
dataTable <- read.csv(File, header=T, sep=';', na.strings="?", 
            nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
dataTable$Date <- as.Date(dataTable$Date, format="%d/%m/%Y")
plot2data <- dataTable[dataTable$Date >= "2007-02-01" & Date <= "2007-02-02",]
rm(dataTable)
datetime <- paste(as.Date(plot2data$Date), plot2data$Time)
plot2data$DateTime <- as.POSIXct(datetime)
plot(plot2data$Global_active_power~DateTime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
png 
5 
dev.off()
