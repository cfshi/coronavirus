library(tidyverse)


clean_gt <- (gtrendsdf
	%>% mutate(date = as.Date(as.character(format(date, format="%Y-%m-%d")
			, format = "%Y-%m-%d"))
		, hits = ifelse(hits == "<1", 0.5, as.numeric(hits))
	)
)

print(clean_gt)

