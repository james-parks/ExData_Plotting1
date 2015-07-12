plot2 <- function() {
	newdat <-read.table("household_power_consumption.txt",sep=";",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),nrows=2880, skip=66637)
	number_rows <-nrow(newdat)
	all_dat <-data.frame()
	for (i in 1:number_rows) {
		char_time <-paste(newdat[i,1],newdat[i,2])
		proper_time <- as.POSIXct(strptime(char_time, "%d/%m/%Y %H:%M:%S"))
		all_dat <-rbind(all_dat,cbind(newdat[i,],proper_time))	
	}
	plot(all_dat$proper_time,all_dat$V3,type="l",xlab="",ylab = "Global Active Power (kilowatts)")
	dev.copy(png,file = "plot2.png")
	dev.off()
}