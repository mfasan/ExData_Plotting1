## Plot2
powerdata <- read.table("./exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y%H:%M:%S")

#plot
plot(powerdataselect$DateTime, powerdataselect$Global_active_power,type="n",ylab="Global Active power (kilowatts)",xlab="")
lines(powerdataselect$DateTime, powerdataselect$Global_active_power,type="l")

#save
dev.copy(png,'plot2.png')
dev.off()


