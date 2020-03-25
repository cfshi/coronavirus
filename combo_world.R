library(tidyverse)

combodat <- (left_join(ddworld, worldtrends)
	%>% filter(date != as.Date("2020-02-12"))
	%>% filter(date < as.Date("2020-03-23"))
	%>% group_by(term)
	%>% mutate(scale_cases = 100*incidence/max(incidence,na.rm=TRUE))	
	%>% ungroup()
	%>% select(date,hits,scale_cases,term)
	%>% gather(key="type", value="score",-date, -term)
)

print(tail(combodat))


#combodatHack <- (combodat
#	%>% mutate(remove_max = ifelse(scale_cases > 99.9, 0, scale_cases)
#		, scale_cases = 100*remove_max/max(remove_max,na.rm=TRUE)
#		, scale_cases = ifelse(remove_max == 0, NA, scale_cases)
#		)
#)

#print(combodatHack)
