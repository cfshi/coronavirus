library(ggplot2);theme_set(theme_bw())
library(tidyverse)

gg <- (ggplot(ddconfirm, aes(x=Date, y=newConfirmations, color=Country))
	+ geom_point()
	+ geom_line()
	+ scale_y_log10()
#	+ theme(legend.position="none")
)

print(gg)

