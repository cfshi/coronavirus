library(tidyverse)


country_name <- data.frame(geo = c("world", "CN", "KR", "TW", "IT", "US","SG")
	, Country_Region = c("Globally", "China", "Republic of Korea", "Taiwan", "Italy", "United States of America", "Singapore")
)


combodat <- (left_join(clean_gt, country_name)
	%>% left_join(.,countrydat)
#	%>% filter(date != as.Date("2020-02-14"))
	%>% group_by(Country_Region)
	%>% mutate(scale_cases = 100*total_cases/max(total_cases,na.rm=TRUE))	
	%>% ungroup()
	%>% select(date, Country_Region, hits, scale_cases)
	%>% gather(key="type", value="score",-date, -Country_Region)
	%>% mutate(Country_Region = ifelse(Country_Region == "United States of America", "USA", Country_Region))
)

print(combodat %>% filter(type == "scale_cases"))

#combodatHack <- (combodat
#	%>% mutate(remove_max = ifelse(scale_cases > 99.9, 0, scale_cases)
#		, scale_cases = 100*remove_max/max(remove_max,na.rm=TRUE)
#		, scale_cases = ifelse(remove_max == 0, NA, scale_cases)
#		)
#)

#print(combodatHack)
