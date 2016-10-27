# plot line graph
with(mydata, plot(datetime,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(mydata, points(datetime,Sub_metering_2, type = "l", col = "red"))
with(mydata, points(datetime,Sub_metering_3, type = "l", col = "blue"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

#copy to png
dev.copy(png, "plot3.png")
dev.off()
