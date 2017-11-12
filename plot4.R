# Get dataset
source("./Loaddata.r")

# Set plotting parameters
par(mfrow = c(2,2),     # Sets up the 4 by 4 multi-graph display
    mar = c(4,4,2,1),
    oma = c(0,0,2,0),
    font.lab  = 2,
    font.axis = 2,
    pty = "m")

# Create plots using common dataset
with(workingdata, 
     {  
           plot(global_active_power ~ datetime,
                type = "l",
                xlab = "",
                ylab = "Global Active Power")
           
           plot(voltage ~ datetime,
                type = "l",
                xlab = "datetime",
                ylab = "Voltage"  )
           
           plot(sub_metering_1 ~ datetime,
                type = "l",
                xlab = "",
                ylab = "Energy sub metering")
           lines(sub_metering_2 ~ datetime, col = "red")
           lines(sub_metering_3 ~ datetime, col = "blue")                     
           legend( "topright",
                   legend = c("Sub_metering_1", 
                              "Sub_metering_2",
                              "Sub_metering_3"),
                   col = c("black", "red", "blue"),
                   lty = 1)                        
           
           plot(global_reactive_power ~ datetime,
                type = "l",
                xlab = "datetime",
                ylab = "Global_reactive_power" )
           
     } )

# Open PNG Device and save file
dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()