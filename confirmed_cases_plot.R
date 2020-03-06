library(ggplot2);theme_set(theme_bw())
library(tidyverse)

gg <- (ggplot(countrydat, aes(x=date, y=total_cases, color=Country_Region))
	+ geom_point()
	+ geom_line()
	+ scale_y_log10()
	+ theme(legend.position="none")
)

print(gg)

prigmnt(gg %+% (countrydat 
	%>% filter(!(Country_Region %in% c("Globally","Mainland China","Other","Outside of China")))
	)
	+ geom_vline(xintercept=as.Date("2020/02/14"))
)
