# Plot 1 Code

# Read the data from file and subset with respect to the date
householdPower <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
household <- rbind(householdPower[householdPower$Date == "1/2/2007",], householdPower[householdPower$Date == "2/2/2007",])

# Change date format
household$Date <- as.Date(household$Date, "%d/%m/%Y")
household <- cbind(household, "NewDate" = as.POSIXct(paste(household$Date, household$Time)))

# Histogram
hist(as.numeric(household$Global_active_power), col = "Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
