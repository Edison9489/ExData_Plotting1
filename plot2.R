#Reading data
rawData <- read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
dataNeeded <- rawData[rawData$Date %in% c("1/2/2007","2/2/2007"),]
finalData <-cbind(dataNeeded,strptime(paste(dataNeeded$Date, dataNeeded$Time, sep=" "),"%d/%m/%Y %H:%M:%S"))

#Plot2
png(filename='plot2.png',width=480,height=480,units='px')
plot(finalData$`strptime(paste(dataNeeded$Date, dataNeeded$Time, sep = " "), `,finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
