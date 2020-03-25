library(ggplot2);theme_set(theme_bw())
library(tidyverse)

mindate <- as.Date("2020-01-15")

gg <- (ggplot(combodat, aes(x=date,y=score,lty=type,color=term))
#	+ geom_point()
	+ geom_line()
	+ theme(legend.position="bottom")
	+ xlim(mindate,NA)
)


print(gg)


