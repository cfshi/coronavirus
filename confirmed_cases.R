library(tidyverse)
library(zoo)

source("makestuff/makeRfuns.R")
commandEnvironments()

first_date <- as.Date("2019-12-31")
today <- Sys.Date()

dd <- read_csv("https://open-covid-19.github.io/data/data.csv")

country_of_interest <- c("US","IT","KR","SG","CN","TW","CA" ,"BR", "CO", "JP", "GB", "SE", "ZA")
print(names(dd))

dateframe <- data.frame(Date = as.Date(first_date:today))

ddconfirm <- (left_join(dateframe,dd)
	%>% filter(CountryCode %in% country_of_interest)
	%>% filter(is.na(RegionName)) ## country level, we don't care about provinces/regions/states
	%>% group_by(CountryCode)
	%>% mutate(newConfirmations = diff(c(NA,Confirmed)))
	%>% ungroup()
	%>% select(Date, CountryCode, CountryName, Confirmed, newConfirmations)
)


print(ddconfirm,n=100)

saveEnvironment()

