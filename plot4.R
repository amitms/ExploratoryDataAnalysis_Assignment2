#merge two data sets
combustion_Related <- grepl("comb", SCC$SCC.Level.One, ignore.case=TRUE)
coal_Related <- grepl("coal", SCC$SCC.Level.Four, ignore.case=TRUE) 
coal_Combustion <- (combustion_Related & coal_Related)
combustion_SCC <- SCC[coal_Combustion,]$SCC
combustion_NEI <- NEI[NEI$SCC %in% combustion_SCC,]

ggp <- ggplot(combustion_NEI,aes(factor(year),Emissions/10^5)) +
  geom_bar(stat="identity",fill="grey",width=0.75) +
  theme_bw() +  guides(fill=FALSE) +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
  labs(title=expression("PM"[2.5]*" Coal Combustion Source Emissions Across US from 1999-2008"))

print(ggp)
dev.copy(png,"plot4.png", width=400, height=400)
dev.off()