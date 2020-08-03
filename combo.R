library(tidyverse)

source("makestuff/makeRfuns.R")
commandFiles()

country_name <- data.frame(geo = c("CN", "KR", "TW", "IT", "US","SG","CA", "BR", "JP", "UK", "SW", "SA")
	, Country_Region = c("China", "Republic of Korea", "Taiwan", "Italy", "United States of America", "Singapore","Canada", "Brazil", "Japan", "United Kingdom", "Sweden", "South Africa")
)

#print(clean_gt)

#print(dd)

combodat <- (left_join(clean_gt, country_name)
	%>% left_join(.,ddconfirm,by=c("geo"="CountryCode","date"="Date"))
   %>% filter(date != as.Date("2020-02-13"))
	%>% group_by(geo)
	%>% mutate(scale_cases = 100*newConfirmations/max(newConfirmations,na.rm=TRUE))	
	%>% ungroup()
	%>% select(date, CountryName=Country_Region, hits,scale_cases)
	%>% gather(key="type", value="score",-date, -CountryName)
	%>% filter(!is.na(CountryName))
)

print(combodat)


#combodatHack <- (combodat
#	%>% mutate(remove_max = ifelse(scale_cases > 99.9, 0, scale_cases)
#		, scale_cases = 100*remove_max/max(remove_max,na.rm=TRUE)
#		, scale_cases = ifelse(remove_max == 0, NA, scale_cases)
#		)
#)

#print(combodatHack)

saveEnvironment()
