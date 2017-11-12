setwd("~/Documents/Coursera/Data analysis/Exploratory Data analysis/Week1/Assignment1/repo/ExData_Plotting1")

require(data.table)
require(dplyr)

#reading file
filename <- "~/Documents/Coursera/Data analysis/Exploratory Data analysis/Week1/Assignment1/household_power_consumption.txt"
alldata <- fread(filename, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")
names(alldata) <- tolower(names(alldata))

#keep dates 2007-02-01 and 2007-02-02
workingdata <- filter(alldata, date=="1/2/2007"| date=="2/2/2007")

# maket the column datetime
workingdata <-  workingdata %>% mutate(datetime =as.POSIXct(strptime(paste(date, time, sep = " "), "%d/%m/%Y %H:%M:%S"))) %>% select(datetime, 3:9)
str(workingdata)
rm(alldata)
