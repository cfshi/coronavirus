library(tidyverse)


clean_gt <- (gtrendsdf
	%>% mutate(Date = format(date, format="%m/%d/%Y"))
)

print(clean_gt)

