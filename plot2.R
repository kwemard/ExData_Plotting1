# read the dataset
# WE SUPPOSE THAT DATA HAVE BEEN DOWNLOADED IN CURRENT DIRECTORY

household_power_consumption <- read.csv("~/household_power_consumption.txt", sep=";", 
                                        na.strings="?", stringsAsFactors=FALSE,comment.char="%")

# subsetting data from the dates 2007-02-01 and 2007-02-02 i.e. ("1/2/2007","2/2/2007")
isfrom = household_power_consumption$Date %in% c("1/2/2007","2/2/2007")
household_sub = household_power_consumption[isfrom,]

# convert  Date and Time variables to Date/Time classes

date=as.Date(household_sub$Date,"%d/%m/%Y")
date_time=paste(date,household_sub$Time)

DATE=strptime(date_time, "%Y-%m-%d %H:%M:%S")
## construct plot 2 and save it to a PNG file with a width of 480 pixels and a height of 480 pixels


png(filename = "plot2.png", width = 480, height = 480)
plot(DATE,household_sub$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()


