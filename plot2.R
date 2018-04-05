## Plot2
powerdata <- read.table("./exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y%H:%M:%S")
powerdataselect <- powerdata[powerdata$DateTime>="2007-02-01"&powerdata$DateTime<"2007-02-03"&!is.na(powerdata$DateTime),]


#plot
plot(powerdataselect$DateTime, powerdataselect$Global_active_power,type="n",ylab="Global Active power (kilowatts)",xlab="")
lines(powerdataselect$DateTime, powerdataselect$Global_active_power,type="l")

#save
dev.copy(png,'plot2.png',width=480, height=480,units="px")
dev.off()


