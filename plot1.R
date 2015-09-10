File <- "./household_power_consumption.txt"
> dataTable <- read.csv(File, header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> Date <- as.Date(dataTable$Date, format="%d/%m/%Y")
> graphdata <- subset(dataTable, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
> View(graphdata)
> View(dataTable)
> plotdata <- dataTable[dataTable$Date >= "2007-02-01" & Date <= "2007-02-02",]
> View(plotdata)
> rm(dataTable)
>  DateandTime <- paste(as.Date(plotdata$Date), plothdata$Time)

> DateandTime <- paste(as.Date(plotdata$Date), plotdata$Time)
> V
> hhist(plotdata$Global_active_power, main="Global Active Power", 
       +      xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
> dev.copy(png, file="plot1.png", height=480, width=480)
png 
4 
> dev.off()
