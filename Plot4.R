
####
#PLOT4
####



data <- read.table("~/Academics/Previous Semesters/Spring 2015/Math 378/Exploratory Data Analysis/household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?" )
data<- subset(data,  (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

head(data)
attach(data)

data$Date = as.Date(data$Date, format = "%d/%m/%Y")
DateAndTime=  as.POSIXct(paste(data$Date, data$Time))


#make it into 4 blocks
#byrow??
par(mfrow=c(2,2))

#1
plot(DateAndTime, Global_active_power,type="l", ylab="Global Active Power (kw)"   ,  xlab="   ")
#2
plot(DateAndTime, Voltage,type="l", ylab="Voltage"   ,  xlab=" DateTime  ")
#3
  plot(DateAndTime,Sub_metering_1,type="l", ylab="Energy Sub Metering"   ,  xlab="   ")
  lines(DateAndTime, Sub_metering_2, type="l", col="red")
  lines(DateAndTime, Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("black", "red", "blue"), col=c("Sub metering 1", "sub metering 2", "sub metering 3") )
#4
plot(DateAndTime, Global_reactive_power,type="l", ylab="Global Reactive Power (kw)"   ,  xlab=" datetime  ")
#
png("plot4.png", width=480, height= 480)
