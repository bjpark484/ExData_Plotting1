
####
#PLOT3
####


data <- read.table("~/Academics/Previous Semesters/Spring 2015/Math 378/Exploratory Data Analysis/household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?" )
data<- subset(data,  (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

head(data)
attach(data)

data$Date = as.Date(data$Date, format = "%d/%m/%Y")
DateAndTime=  as.POSIXct(paste(data$Date, data$Time))

plot(DateAndTime,Sub_metering_1,type="l", ylab="Energy Sub Metering"   ,  xlab="   ")
lines(DateAndTime, Sub_metering_2, type="l", col="red")
lines(DateAndTime, Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub metering 1", "sub metering 2", "sub metering 3") )

png("plot3.png", width=480, height= 480)
