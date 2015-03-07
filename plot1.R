# read the dataset
# WE SUPPOSE THAT DATA HAVE BEEN DOWNLOADED IN CURRENT DIRECTORY
household_power_consumption <- read.csv("~/household_power_consumption.txt", sep=";", 
                                        na.strings="?", stringsAsFactors=FALSE,comment.char="%")

# subsetting data from the dates 2007-02-01 and 2007-02-02 i.e. ("1/2/2007","2/2/2007")
household_sub = subset(household_power_consumption , household_power_consumption$Date %in% c("1/2/2007","2/2/2007"))

## construct plot 1 and save it to a PNG file with a width of 480 pixels and a height of 480 pixels

png(filename = "plot1.png", width = 480, height = 480)
hist(household_sub$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()