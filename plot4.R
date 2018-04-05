## Plot4
powerdata <- read.table("./exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y%H:%M:%S")
powerdataselect <- powerdata[powerdata$DateTime>="2007-02-01"&powerdata$DateTime<"2007-02-03"&!is.na(powerdata$DateTime),]

par(mfrow = c(2,2))

#topleft
plot(powerdataselect$DateTime, powerdataselect$Global_active_power,type="n",ylab="Global Active power",xlab="")
lines(powerdataselect$DateTime, powerdataselect$Global_active_power,type="l")

#topright
plot(powerdataselect$DateTime, powerdataselect$Voltage,type="n",ylab="Voltage",xlab="datetime")
lines(powerdataselect$DateTime, powerdataselect$Voltage,type="l")

#bottomleft
plot(powerdataselect$DateTime, powerdataselect$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(powerdataselect$DateTime, powerdataselect$Sub_metering_1,col="black")
lines(powerdataselect$DateTime, powerdataselect$Sub_metering_2,col="red")
lines(powerdataselect$DateTime, powerdataselect$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

#bottomright
plot(powerdataselect$DateTime, powerdataselect$Global_reactive_power,type="n",ylab="Global_reactive_power",xlab="datetime")
lines(powerdataselect$DateTime, powerdataselect$Global_reactive_power,type="l")

##save file
dev.copy(png,'plot4.png',width=480, height=480,units="px")
dev.off()
