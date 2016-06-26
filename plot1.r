# Plot 1 - Histogram of Frequency vs Global Active Power

# read the data set
source("load_data.r")

# start the png device
png(filename="plot1.png", height=480, width=480, bg="transparent")

# plot the histogram
hist(sub_data$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# save the figure
dev.off() 