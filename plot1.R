## Plot1
powerdata <- read.table("./exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y%H:%M:%S")
powerdataselect <- powerdata[powerdata$DateTime>="2007-02-01"&powerdata$DateTime<"2007-02-03"&!is.na(powerdata$DateTime),]

##plot
hist(powerdataselect$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

##save file
dev.copy(png,'plot1.png')
dev.off()





