## Data has been loaded to the variable 'hpc_data' from dataloading.R script
## to increase reproducability

source('dataloading.R')

## NOTE: dataloading.R file is necessary to run the below scripts

## Grapic device settings
png(file = 'plot3.png',
    width = 480,
    height = 480
)

## Plotting the data
plot(x = hpc_data$datetime, 
     y = hpc_data$Sub_metering_1, 
     type = 'n',
     xlab = '',
     ylab = 'Energy sub metering'
)
points(x = hpc_data$datetime, 
       y = hpc_data$Sub_metering_1,
       type='l'
)
points(x = hpc_data$datetime, 
       y = hpc_data$Sub_metering_2,
       type='l',
       col = 'red'
)
points(x = hpc_data$datetime, 
       y = hpc_data$Sub_metering_3,
       type='l',
       col = 'blue'
)

legend('topright', col=c('black','red', 'blue'),
       legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       lwd=1, lty=c(1,1,1))

## Closing the graphics device connection
dev.off()

