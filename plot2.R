x<-read.table("Downloads/household_power_consumption.txt",header = TRUE,sep = ";",dec = ".",stringsAsFactors = FALSE)
x$Date <- as.Date(x$Date,"%d/%m/%Y")
sub <- x[x$Date>=as.Date("01/02/2007","%d/%m/%Y") & x$Date<=as.Date("02/02/2007","%d/%m/%Y"),]

datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%Y-%m-%d %H:%M:%S")
global <- as.numeric(sub$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, global, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
