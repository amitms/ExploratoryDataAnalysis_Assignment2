
aggregate_data<-aggregate(Emissions~year,NEI,sum)
par(mar = rep(3, 4))
barplot((aggregate_data$Emissions)/10^6,names.arg =aggregate_data$year,
xlab="Year",ylab="PM2.4 Emissions(10^6 Tons)",main="Total PM2.5 Emissions from All US Sources"
)
par(mar = rep(4, 4))
dev.copy(png,"plot1.png", width=400, height=400)
dev.off()