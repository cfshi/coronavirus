library(ggplot2);theme_set(theme_bw())
library(tidyverse)

gg <- (ggplot(combodat, aes(date))
	+ geom_point(aes(y=hits),color="blue")
	+ geom_line(aes(y=hits),color="blue")
	+ geom_point(aes(y=scale_cases),color="red")
	+ geom_line(aes(y=scale_cases),color="red")
	+ ggtitle("Red = Incidence Score, Blue = Google Trend Score")
	+ ylab("Score (x/max")
)

print(gg)

print(gg %+% combodatHack)
