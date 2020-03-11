library(tidyverse)

dd <- read_csv(input_files[[1]])

print(names(dd))

## Try to keep logical distinction between mutate and summarise or else
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
	%>% rowwise()
	%>% mutate(Country_Region = ifelse((Province_State == "Taiwan")&!is.na(Province_State), "Taiwan", Country_Region))
	%>% group_by(Province_State,Country_Region)
	%>% mutate(Cases = diff(c(CumCases,NA))
		)
	%>% ungroup()
)

print(provincedat %>% filter(Cases < 0))


print(provincedat$Country_Region)

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
