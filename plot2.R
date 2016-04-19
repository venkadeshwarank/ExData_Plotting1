## Data has been loaded to the variable 'hpc_data' from dataloading.R script
## to increase reproducability

source('dataloading.R')

## NOTE: dataloading.R file is necessary to run the below scripts

## Plotting the data
plot(x = hpc_data$datetime, 
     y = hpc_data$Global_active_power, 
     type = 'l',
     xlab = '',
     ylab = 'Global Active Power(kilowatts)'
     )
## Grapic device settings
dev.copy(png, file = 'plot2.png', width = 480, height = 480)
## Closing the graphics device connection
dev.off()

