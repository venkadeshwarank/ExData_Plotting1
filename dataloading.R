## This file loades the data and does the necessary formatting to make the data
## clean and ready for loading

library(lubridate)

if  (!file.exists('plot.Rdata')) {
    ## Dowloading the needed file from web
    file_url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
    if (!file.exists('powercon.zip')) {
        download.file(file_url, './powercon.zip')
    }
    
    unzip('./powercon.zip', overwrite=T)
    
    ## Loading the file to dataframe
    sample_df <- read.table('household_power_consumption.txt', sep = ';', 
                            nrows = 25, stringsAsFactors = F, na.strings = '?', 
                            header = T)
    classes <- sapply(sample_df, class)
    df <- read.table('household_power_consumption.txt', sep = ';',
                     header = T, stringsAsFactors = F, na.strings = '?',
                     colClasses = classes)
    
    ## Formating the date/Time column
    df$datetime <- strptime(paste(df$Date, df$Time), '%d/%m/%Y %H:%M:%S')
    df$Date <- dmy(df$Date)
    
    ## Filtering only the Feb 1st and 2nd data of 2007.
    needed <- subset(df, Date == '2007-02-01' | Date == '2007-02-02')
    
    ##Saving data
    saveRDS(needed, file = 'plot.Rdata')
}

hpc_data <- readRDS('plot.Rdata')