library(tidyverse)


clean_gt <- (bind_rows(country_gt)
	%>% rbind(.,worldgt)
	%>% mutate(date = as.Date(as.character(format(date, format="%Y-%m-%d")
			, format = "%Y-%m-%d"))
	)
)

print(clean_gt)

