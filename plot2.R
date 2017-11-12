# Get dataset
source("./Loaddata.r")

# Set plotting parameters
par(font.lab  = 2,
    font.axis = 2,
    pty = "m")

# Plot line graph
with(workingdata,
     plot(global_active_power ~ as.POSIXct(datetime),
          type = "l",
          xlab = "",
          ylab = "Global Active Power (kilowatts)"))

# Open PNG Device and save file
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()

