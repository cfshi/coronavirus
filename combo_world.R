library(tidyverse)

source("makestuff/makeRfuns.R")
commandFiles()

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

saveEnvironment()

