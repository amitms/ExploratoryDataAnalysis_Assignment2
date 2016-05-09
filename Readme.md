#Peer Assessment 2: Exploratory Data Analysis

## Question 1: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
Rcode: plot1.R
"plot1.png"

### from plot1.png, total emissions from PM2.5 have decreased from 1999-2008

## Question 2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
Rcode: plot2.R
"plot2.png"
### from plot2.png, total emissions from PM2.5 have decreased from 1999-2008 in Baltimore

## Question 3: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
Rcode: plot3.R
"plot3.png"
### from plot3.png, there is slight increase overall from 1999-2008. and significant increase until 2005 and decreases again to just above starting values.


## Question 4: Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
Rcode: plot4.R
"plot4.png"
### from plot4.png, coal combustion related sources have decreases from 1999-2008


## Question 5: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
Rcode: plot5.R
"plot5.png"
### from plot5.png, motor vehicles sources have decreases from 1999-2008 in Baltimore.

## Question 6: Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
Rcode: plot6.R
"plot6.png"
### from plot6.png, there is greatest changes over time in motor vehicle emissions.
