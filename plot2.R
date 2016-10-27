# plot line graph
with(mydata, plot(datetime, Global_active_power, type = "l",xlab = "", ylab = "Global Active Power (kilowatts)"))

#copy to png
dev.copy(png, "plot2.png")
dev.off()
