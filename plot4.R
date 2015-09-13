## loading data
source("loadData.R")

## create a canvas
png(filename = "plot4.png",
    width = 800, height = 800, units = "px", pointsize = 12,
    bg = "white")

par(mfrow = c(2, 2))

## plots from left to right in 2 by 2 matrix

## no 1
plot(data$DateTime, data$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

## no 2
plot(data$DateTime, data$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

## no 3
plot(data$DateTime, data$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")

lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")

legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## no 4
plot(data$DateTime, data$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(data)[4])

## flush
dev.off()