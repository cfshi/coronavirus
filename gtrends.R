library(gtrends)

gtrendsdat <- gtrends(c("coronavirus"), time = "2019012-01 2020-03-04", tz=0)

print(head(gtrendsdat$interest_over_time))


