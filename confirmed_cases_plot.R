library(ggplot2);theme_set(theme_bw())
library(tidyverse)

gg <- (ggplot(cleandat, aes(x=Date, y=total_cases, color=Country_Region))
	+ geom_point()
	+ geom_line()
	+ scale_y_log10()
	+ theme(legend.position="none")
)

print(gg)

print(gg %+% (cleandat %>% filter(Country_Region == "Mainland China"))
	+ geom_vline(xintercept=as.Date("2020/02/12"))

)
