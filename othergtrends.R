library(gtrendsR)
library(tidyverse)

dec2today <- "2019-12-01 2020-03-25"
lessthan1 <- 0.5

flattrend <- gtrends("flattening the curve + flattening the curve",time=dec2today,tz=0)

