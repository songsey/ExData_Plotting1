# Plot 2 - global active power vs day

# read the data set
source("load_data.r")

# start the png device
png(filename="plot2.png", height=480, width=480, bg="transparent")

# plot the line
plot(sub_data$Timestamp,
     sub_data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

# save the figure
dev.off()