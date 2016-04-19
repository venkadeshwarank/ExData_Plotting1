
## Data has been loaded to the variable 'hpc_data'
source('dataloading.R')

## NOTE: dataloading.R file is necessary to run the below scripts

## Grapic device settings
png(file = 'plot1.png',
    width = 480,
    height = 480
    )

## Plotting the data

hist(hpc_data$Global_active_power, 
     main='Global Active Power', 
     xlab = 'Global Active Power(kilowatts)', 
     col = 'red')

## Closing the graphics device connection

dev.off()

