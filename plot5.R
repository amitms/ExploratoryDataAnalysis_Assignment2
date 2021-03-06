vehicles<-grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
vehiclesSCC<-SCC[vehicles,]$SCC
vehiclesNEI<-NEI[NEI$SCC %in% vehiclesSCC,]

baltimore_VehiclesNEI <- vehiclesNEI[vehiclesNEI$fips=="24510",]

library(ggplot2)

ggp <- ggplot(baltimore_VehiclesNEI,aes(factor(year),Emissions)) +
  geom_bar(stat="identity",fill="grey",width=0.75) +
  theme_bw() +  guides(fill=FALSE) +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
  labs(title=expression("PM"[2.5]*" Motor Vehicle Source Emissions in Baltimore from 1999-2008"))

print(ggp)
dev.copy(png,"plot5.png", width=400, height=400)
dev.off()