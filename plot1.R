#Draw Histogram
hist(mydata$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

#copy to png
dev.copy(png, "plot1.png")
dev.off()