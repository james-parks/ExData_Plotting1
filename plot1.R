plot1 <- function() {
	newdat <-read.table("household_power_consumption.txt",sep=";",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),nrows=2880, skip=66637)
	hist(newdat$V3, col = "Red", xlab = "Global Active Power (kilowatts)",ylab = "Frequency", main = "Global Active Power")
	dev.copy(png,file = "plot1.png")
	dev.off()
}