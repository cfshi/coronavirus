library(gtrendsR)
library(tidyverse)

gtrendsdat <- gtrends(c("coronavirus"), time = "2019-12-01 2020-03-04",tz=0)

print(head(gtrendsdat$interest_over_time))


gtrendsdf <- gtrendsdat[["interest_over_time"]]


