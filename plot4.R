## Data has been loaded to the variable 'hpc_data' from dataloading.R script
## to increase reproducability

source('dataloading.R')

## NOTE: dataloading.R file is necessary to run the below scripts

## Grapic device settings
png (file = 'plot4.png', width = 480, height = 480)

par(mfrow = c(2,2))

## Plotting the data

## Plot 1
plot(x = hpc_data$datetime, y = hpc_data$Global_active_power, type = 'l',
     xlab = '', ylab = 'Global Active Power(kilowatts)' )

## Plot 2
plot(x = hpc_data$datetime, y = hpc_data$Voltage, type = 'l',
     xlab = 'datetime', ylab = 'Voltage' )

## Plot 3
plot(x = hpc_data$datetime, y = hpc_data$Sub_metering_1, type = 'n',
     xlab = '', ylab = 'Energy sub metering'
)
points(x = hpc_data$datetime, y = hpc_data$Sub_metering_1, type='l')
points(x = hpc_data$datetime, y = hpc_data$Sub_metering_2, type='l', col = 'red')
points(x = hpc_data$datetime, y = hpc_data$Sub_metering_3, type='l',col = 'blue')

legend('topright', col=c('black','red', 'blue'), lwd=1, lty=c(1,1,1),
       legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       bty = "n")

##  Plot 4 
plot(x = hpc_data$datetime, y = hpc_data$Global_reactive_power , type = 'l',
     xlab = 'datetime', ylab = 'Global_reactive_power', lwd=0.5 )

## Closing the graphics device connection

dev.off()

