library(tidyverse)

dd <- read_csv(input_files[[1]])

print(names(dd))

## Try to keep logical distinction between mutate and summarise or else
## JD might cry ☹
provincedat <- (dd
	%>% gather(key="date", value="Confirmed"
		, -`Province/States`, -`Country/Region`,-`WHO region`
	)
	%>% transmute(Province_State = `Province/States`
		, Country_Region = `Country/Region`
		, WHO_region = `WHO region`
		, date = as.Date(paste0("0",date,"20"),format="%m/%d/%Y")
		, CumCases = Confirmed
		)
	%>% group_by(Province_State,Country_Region)
	%>% mutate(Cases = diff(c(CumCases,NA)))
	%>% ungroup()
)

print(provincedat)

countrydat <- (provincedat
	%>% group_by(Country_Region, date)
	%>% summarise(total_cumcases = sum(CumCases,na.rm=TRUE)
		, total_cases = sum(Cases,na.rm=TRUE)
	)
)

worlddat <- (provincedat
	%>% filter(!(Country_Region %in% c("Globally","Mainland China","Other","Outside of China")))
	%>% ungroup()
	%>% group_by(date)
	%>% summarise(total_cumcases = sum(CumCases, na.rm=TRUE)
		, total_cases = sum(Cases, na.rm=TRUE)
	)
)

print(unique(countrydat[["Country_Region"]]))
