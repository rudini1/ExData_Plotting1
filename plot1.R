setwd("~/Documents/Coursera/Data analysis/Exploratory Data analysis/Week1/Assignment1/repo/ExData_Plotting1")

##  plot1 histogram
##_________________

# Get dataset
source("./Loaddata.r")

# Set plotting parameters
par(font.lab  = 2,
    font.axis = 2,
    pty = "m")

# Plot histogram
hist(workingdata$global_active_power,
     workingdata$Voltage,
     col    = "red",
     breaks = 12,
     main   = "Global Active Power",
     xlab   = "Global Active Power (kilowatts)",
     ylab   = "Frequency"                        )

# Open PNG Device and save file
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()


