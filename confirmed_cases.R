library(tidyverse)
library(zoo)

first_date <- as.Date("2019-12-31")
today <- as.Date(Sys.Date())

dd <- read_csv("https://raw.githubusercontent.com/open-covid-19/data/master/output/data_minimal.csv")


dateframe <- data.frame(Date = as.Date(first_date:today))

ddcombo <- (left_join(dateframe,dd)
	%>% group_by(Key)
	%>% mutate(newConfirmations = diff(c(NA,Confirmed)))
	%>% ungroup()
	%>% select(Date, Country=Key, Confirmed, newConfirmations)
)


print(ddcombo,n=100)



