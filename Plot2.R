
####
#PLOT2
####

data <- read.table("~/Academics/Previous Semesters/Spring 2015/Math 378/Exploratory Data Analysis/household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?" )
data<- subset(data,  (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

head(data)
attach(data)

data$Date = as.Date(data$Date, format = "%d/%m/%Y")
DateAndTime=  as.POSIXct(paste(data$Date, data$Time))

plot(DateAndTime, Global_active_power,type="l", ylab="Global Active Power (kw)"   ,  xlab="   ")


png("plot2.png", width=480, height= 480)
