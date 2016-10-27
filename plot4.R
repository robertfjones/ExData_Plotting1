#Setup frame
par(mfcol = c(2,2),cex = 0.5)

#plots x 4 (order - top left, bottom left, top right, bottom right)
with(mydata, plot(datetime, Global_active_power, type = "l",xlab = "", ylab = "Global Active Power"))
with(mydata, plot(datetime,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(mydata, points(datetime,Sub_metering_2, type = "l", col = "red"))
with(mydata, points(datetime,Sub_metering_3, type = "l", col = "blue"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
with(mydata, plot(datetime, Voltage, type = "l"))
with(mydata, plot(datetime, Global_reactive_power, type = "l"))

#copy to png
dev.copy(png, "plot4.png")
dev.off()


