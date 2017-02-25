# Solution to Exploratory Data Analysis
# Peer-graded Assignment: Course Project 1
# Create plot3.png

#set URL and download file from URL
#url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#download.file(url, destfile = "Dataset.zip", method="curl")

#unzip data file
#unzip(zipfile="Dataset.zip", exdir=".")

#read in data files
electricData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

#subset for first 2 days in February 2007
plotData <- subset(electricData, Date == '1/2/2007' | Date == '2/2/2007')

#combine Date and Time columns into a column as a date object
plotData$DateTime <- strptime(paste(plotData$Date, plotData$Time), "%d/%m/%Y %H:%M") 

#draw line graph to screen device
plot(plotData$DateTime, plotData$Sub_metering_1, type = "o", col = "black", pch = ".", xlab = "", ylab = "Energy sub metering")

#add lines
lines(plotData$DateTime, plotData$Sub_metering_2, type = "o", col = "red", pch = ".")
lines(plotData$DateTime, plotData$Sub_metering_3, type = "o", col = "blue", pch = ".")

#add legend
legend("topright", c("Sub_metering_1   ","Sub_metering_2   ", "Sub_metering_3   "), col = c("black", "red", "blue"), lty = c(1, 1, 1))

#copy histogram from screen to PNG device
dev.copy(png, file = "plot3.png")

#close the PNG device
dev.off()
