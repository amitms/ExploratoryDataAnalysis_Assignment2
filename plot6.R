vehicles<-grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
vehicles_SCC<-SCC[vehicles,]$SCC
vehicles_NEI<-NEI[NEI$SCC %in% vehiclesSCC,]

vehicles_BaltimoreNEI<-vehicles_NEI[vehiclesNEI$fips=="24510",]
vehicles_BaltimoreNEI$city <- "Baltimore City"

vehicles_LANEI <- vehicles_NEI[vehiclesNEI$fips=="06037",]
vehicles_LANEI$city <- "Los Angeles County"

# Combine subsets with city name into one data frame
both_NEI <- rbind(vehicles_BaltimoreNEI,vehicles_LANEI)


ggp <- ggplot(both_NEI, aes(x=factor(year), y=Emissions, fill=city)) +
  geom_bar(aes(fill=year),stat="identity") +
  facet_grid(scales="free", space="free", .~city) +
  guides(fill=FALSE) + theme_bw() +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Kilo-Tons)")) + 
  labs(title=expression("PM"[2.5]*" Motor Vehicle Source Emissions in Baltimore & LA, 1999-2008"))


print(ggp)
dev.copy(png,"plot6.png", width=400, height=400)
dev.off()