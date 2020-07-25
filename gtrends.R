library(gtrendsR)
library(tidyverse)

source("makestuff/makeRfuns.R")
commandEnvironments()

first_date <- "2019-12-01"
today <- Sys.Date()
dec2today <- paste(first_date,today)

print(dec2today)

lessthan1 <- 0.5

gthits <- function(search_term,location,time){
  	gtrendsdat <- gtrends(search_term, geo=location,time = time,tz=0)
  	Sys.sleep(10)
  	dd <- gtrendsdat[["interest_over_time"]]
	dd2 <- (dd
		%>% mutate(hits = ifelse(hits == "<1", lessthan1, as.numeric(hits))
	)
	)
	return(dd2)
}

worldgt <- gthits(search_term="coronavirus",location="",time=dec2today)

country_gt <- lapply(c("US","IT","KR","SG","CN","TW","CA")
	, function(x){
		gthits("coronavirus",location=x,time=dec2today)
		}
)

saveEnvironment()
