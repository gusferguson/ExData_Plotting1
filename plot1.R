# Solution to Exploratory Data Analysis
# Peer-graded Assignment: Course Project 1
# Create plot1.png

#set URL and download file from URL
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "Dataset.zip", method="curl")

#unzip data file
unzip(zipfile="Dataset.zip", exdir=".")

#read in data files
electricData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

#subset for first 2 days in February 2007
plotData <- subset(electricData, Date == '1/2/2007' | Date == '2/2/2007')

#draw histogram to screen device
hist(plotData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

#copy histogram from screen to PNG device
dev.copy(png, file = "plot1.png")

#close the PNG device
dev.off()
