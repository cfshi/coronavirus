library(tidyverse)

combodat <- (left_join(clean_gt,worlddat)
	%>% filter(date != as.Date("2020-02-14"))
	%>% mutate(scale_cases = 100*total_cases/max(total_cases,na.rm=TRUE))	

)

print(combodat)

combodatHack <- (combodat
	%>% mutate(remove_max = ifelse(scale_cases > 99.9, 0, scale_cases)
		, scale_cases = 100*remove_max/max(remove_max,na.rm=TRUE)
		, scale_cases = ifelse(remove_max == 0, NA, scale_cases)
		)
)

print(combodatHack)
