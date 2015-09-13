## loading data
library(sqldf)
data <- read.csv.sql("~/Desktop/Folder1/Jobs/certification/rCode/household_power_consumption_2.txt", 
header=TRUE, sep=";", sql = "select * from file where Date = '1/2/2007' or Date='2/2/2007'", eol = "\n")

## adding date and time to data object
x <- paste(iris2$Date, iris2$Time)
data$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
