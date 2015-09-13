## loading data
source("loadData.R")

## create a canvas
png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")
## plot the graph
plot(data$DateTime, data$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
## flush
dev.off()