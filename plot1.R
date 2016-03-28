#Reading data
rawData <- read.table("household_power_consumption.txt",sep=";",na.strings="?",header=T)
dataNeeded <- rawData[rawData$Date %in% c("1/2/2007","2/2/2007"),]
finalData <-cbind(dataNeeded,strptime(paste(dataNeeded$Date, dataNeeded$Time, sep=" "),"%d/%m/%Y %H:%M:%S"))

#Plot1
png(filename='plot1.png',width=480,height=480,units='px')
hist(finalData$Global_active_power, main="Global Active Power", xlab='Global Active Power (kilowatts)',col='red')
dev.off()
