library(lubridate)

#Download, load and clean data.

filesource <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file <- "data.zip"
download.file(filesource, file)
unzip(file)
mydata <- read.csv("~/RStudio/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings="?")

mydata <- subset(mydata, Date == "1/2/2007" | Date == "2/2/2007")

mydata$datetime <- with(mydata, paste(Date, Time))
mydata$datetime <- dmy_hms(mydata$datetime)

mydata$day <- wday(mydata$datetime[1], label = T)