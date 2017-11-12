# Get dataset
source("./Loaddata.r")

# Set plotting parameters
par(font.lab  = 2,
    font.axis = 2,
    mar = c(2.5,3,0.5, 0.3),
    pty = "s")

# Plot line graph
with(workingdata,
     {  plot(sub_metering_1 ~ datetime,
             type = "l",
             xlab = "",
             ylab = "Energy sub metering")
           lines(sub_metering_2 ~ datetime,
                 col = "red")
           lines(sub_metering_3 ~ datetime,
                 col = "blue")                      } )

legend( "topright",
        legend = c("Sub_metering_1", 
                   "Sub_metering_2",
                   "Sub_metering_3"),
        col = c("black", "red", "blue"),
        lty = 1 )

dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()
