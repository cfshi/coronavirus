library(ggplot2);theme_set(theme_bw())
library(tidyverse)

mindate <- as.Date("2020-01-15")

gg <- (ggplot(combodat, aes(x=date,y=score,lty=type,color=interaction(term,type)))
	+ geom_line()
	+ theme(legend.position="bottom")
	+ xlim(mindate,NA)
	+ scale_color_manual(values=c("red","blue","black","black"))
	+ scale_linetype_manual(values=c(1,2))
)


print(gg)


