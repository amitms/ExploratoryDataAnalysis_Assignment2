#download and unzip data
fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
filepath <- file.path(getwd(), "exdata_Fdata_FNEI_data.zip")
download.file(fileurl,filepath)
unzip('./exdata_Fdata_FNEI_data.zip')

#read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")