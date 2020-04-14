library(tidyverse)


country_name <- data.frame(geo = c("world", "CN", "KR", "TW", "IT", "US","SG","CA")
	, Country_Region = c("Globally", "China", "Republic of Korea", "Taiwan", "Italy", "United States of America", "Singapore","Canada")
)

#print(clean_gt)

#print(dd)


combodat <- (left_join(clean_gt, country_name)
	%>% left_join(.,ddconfirm,by=c("geo"="Country","date"="Date"))
   %>% filter(date != as.Date("2020-02-13"))
	%>% group_by(geo)
	%>% mutate(scale_cases = 100*newConfirmations/max(newConfirmations,na.rm=TRUE))	
	%>% ungroup()
	%>% select(date, Country=geo, hits,scale_cases)
	%>% gather(key="type", value="score",-date, -Country)
	%>% filter(!is.na(Country))
)

print(combodat)


#combodatHack <- (combodat
#	%>% mutate(remove_max = ifelse(scale_cases > 99.9, 0, scale_cases)
#		, scale_cases = 100*remove_max/max(remove_max,na.rm=TRUE)
#		, scale_cases = ifelse(remove_max == 0, NA, scale_cases)
#		)
#)

#print(combodatHack)
