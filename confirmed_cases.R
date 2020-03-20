library(tidyverse)

dd <- read_csv("https://raw.githubusercontent.com/open-covid-19/data/master/output/world.csv")

dd <- (dd
	%>% group_by(CountryName)
	%>% mutate(incidence = diff(c(Confirmed,NA)))
)

print(head(dd))


