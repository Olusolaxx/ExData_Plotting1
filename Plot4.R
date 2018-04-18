# Plot 4 Code

par(mfrow = c(2, 2))
plot(household$Global_active_power ~ household$NewDate, type = "l")
plot(household$Voltage ~ household$NewDate, type = "l")


with(household, {plot(Sub_metering_1 ~ NewDate, type = "l")})
lines(household$Sub_metering_2 ~ household$NewDate, col = "Red")
lines(household$Sub_metering_3 ~ household$NewDate, col = "Blue")


plot(household$Global_reactive_power ~ household$NewDate, type = "l")