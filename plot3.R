##Plot3
powerdata <- read.table("./exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y%H:%M:%S")

##plot
plot(powerdataselect$DateTime, powerdataselect$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(powerdataselect$DateTime, powerdataselect$Sub_metering_1,col="black")
lines(powerdataselect$DateTime, powerdataselect$Sub_metering_2,col="red")
lines(powerdataselect$DateTime, powerdataselect$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

##save file
dev.copy(png,'plot3.png')
dev.off()