#Reading data
rawData <- read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
dataNeeded <- rawData[rawData$Date %in% c("1/2/2007","2/2/2007"),]
finalData <-cbind(dataNeeded,strptime(paste(dataNeeded$Date, dataNeeded$Time, sep=" "),"%d/%m/%Y %H:%M:%S"))

#Plot3
png(filename='plot3.png',width=480,height=480,units='px')
plot(finalData$`strptime(paste(dataNeeded$Date, dataNeeded$Time, sep = " "), `,finalData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(finalData$`strptime(paste(dataNeeded$Date, dataNeeded$Time, sep = " "), `,finalData$Sub_metering_2, type="l", col="red")
lines(finalData$`strptime(paste(dataNeeded$Date, dataNeeded$Time, sep = " "), `,finalData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty="solid")
dev.off()
