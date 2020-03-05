library(tidyverse)

dd <- read_csv(input_files[[1]])

cleandat <- (dd
	%>% select(-Lat,-Long)
	%>% gather(key="Date", value="Confirmed"
		, -`Province/State`, -`Country/Region`
	)
	%>% transmute(Province_State = `Province/State`
		, Country_Region = `Country/Region`
		, Date = as.Date(paste0("0",Date,"20"),format="%m/%d/%Y")
		, CumCases = Confirmed
		)
	%>% group_by(Province_State,Country_Region)
	%>% mutate(Cases = diff(c(CumCases,NA)))
	%>% ungroup()
	%>% group_by(Country_Region, Date)
	%>% mutate(total_cumcases = sum(CumCases)
		, total_cases = sum(Cases)
		)
)

