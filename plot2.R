baltimoreNEI<-NEI[NEI$fips=="24510",]
aggregatetotalBaltimore<-aggregate(Emissions~year,baltimoreNEI,sum)
par(mar = rep(3, 4))
barplot(aggregatetotalBaltimore$Emissions,names.arg=aggregatetotalBaltimore$year,
  xlab="Year",  ylab="PM2.5 Emissions (Tons)",main="Total PM2.5 Emissions From All Baltimore City Sources"
)
par(mar = rep(4, 4))
dev.copy(png,"plot2.png", width=400, height=400)
dev.off()