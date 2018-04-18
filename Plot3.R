# Plot 3 Code

with(household, {plot(Sub_metering_1 ~ NewDate, type = "l", xlab = "", ylab = "Energy sub metering")})

lines(household$Sub_metering_2 ~ household$NewDate, col = "Red")
lines(household$Sub_metering_3 ~ household$NewDate, col = "Blue")
legend("topright", lty = 1, lwd = 3, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
