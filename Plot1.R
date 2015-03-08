####
#PLOT1
####
data <- read.table("~/Academics/Previous Semesters/Spring 2015/Math 378/Exploratory Data Analysis/household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?" )
data<- subset(data,  (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

head(data)
attach(data)


#as.matrix(sapply(data, as.numeric))  
# datetime <- paste(as.Date(data$Date), data$Time)
# data$Datetime <- as.POSIXct(datetime)
# creating Plot1

png("plot1.png", width=480, height= 480)

hist(Global_active_power, main="global active power", xlab="global act. power (Kw)" , ylab=  "frequency"  , col="Red")

dev.off()
