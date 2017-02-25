#CodeBook

##Exploratory Data Analysis

##Peer-graded Assignment: Course Project 1

##Instructions

This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we will be using the “Individual household electric power consumption Data Set” which I have made available on the course web site:

Dataset: Electric power consumption [20Mb]
Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.
The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

Date: Date in format dd/mm/yyyy
Time: time in format hh:mm:ss
Global_active_power: household global minute-averaged active power (in kilowatt)
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
Voltage: minute-averaged voltage (in volt)
Global_intensity: household global minute-averaged current intensity (in ampere)
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

##Written using:

R Studio Version 1.0.136 – © 2009-2016 RStudio, Inc.

###Requirements

Only base packages used.

###Description of Datas

_Complete as downloaded and read into R as dataframe:_

electricData:

data.frame:	2075259 obs. of  9 variables:

$ Date                 : Factor w/ 1442 levels

$ Time                 : Factor w/ 1440 levels

$ Global_active_power  : num

$ Global_reactive_power: num

$ Voltage              : num

$ Global_intensity     : num

$ Sub_metering_1       : num

$ Sub_metering_2       : num

$ Sub_metering_3       : num

_Subset of data for 1/2/2007 - 2/2/2007:_

plotData:

data.frame:	2880 obs. of  10 variables:

$ Date                 : Factor w/ 1442 levels

$ Time                 : Factor w/ 1440 levels

$ Global_active_power  : num

$ Global_reactive_power: num

$ Voltage              : num

$ Global_intensity     : num

$ Sub_metering_1       : num

$ Sub_metering_2       : num

$ Sub_metering_3       : num

$ DateTime             : POSIXlt, format: "Y-m-d H:M:S"
