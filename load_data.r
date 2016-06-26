# read the power consumption data
# convert the Date and Time variables to Date/Time classes 
# missing values are coded as "?" 

data <- read.csv("household_power_consumption.txt",
                 sep=";",
                 colClasses=c(rep("character",2),rep("numeric",7)),
                 na.strings="?")

# Combine the date and time columns into one timestapm
data$Timestamp <- strptime(paste(data$Date,data$Time),
                           format="%d/%m/%Y %H:%M:%S")

# Drop the now-unnecessary date and time cols
data$Date=NULL
data$Time=NULL

# subset the data  
# only data from 2007-02-01 to 2007-02-02 will be used.
sub_data = subset(data,as.Date(data$Timestamp) >= "2007-02-01" 
                     & as.Date(data$Timestamp) < "2007-02-03")