## loading data
source("loadData.R")

## create a canvas
png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

## plot the graph
hist(data$Global_active_power, 12, col = 'red',   main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylim = c(0, 1200))

## flush
dev.off()
