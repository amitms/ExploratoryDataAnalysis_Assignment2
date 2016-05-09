baltimoreNEI<-NEI[NEI$fips=="24510",]
aggregatetotalBaltimore <- aggregate(Emissions ~ year + type, baltimoreNEI, sum)
library(ggplot2)

ggp <- ggplot(aggregatetotalBaltimore, aes(year, Emissions, color = type))
ggp <- ggp + geom_line() +
  xlab("year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions in Baltimore City, Maryland (fips == "24510") from 1999 to 2008')
print(ggp)

dev.copy(png,"plot3.png", width=400, height=400)
dev.off()