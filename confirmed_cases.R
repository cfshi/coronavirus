library(tidyverse)

dd <- read_csv("https://raw.githubusercontent.com/open-covid-19/data/master/output/data.csv")

dd <- (dd
	%>% group_by(CountryName)
	%>% mutate(incidence = diff(c(Confirmed,NA)))
)

ddworld <- (dd
	%>% group_by(Date)
	%>% summarise(incidence = sum(incidence,na.rm=TRUE))
	%>% select(date=Date, incidence)
)

print(ddworld,n=100)



