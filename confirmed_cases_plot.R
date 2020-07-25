library(ggplot2);theme_set(theme_bw())
library(tidyverse)

source("makestuff/makeRfuns.R")
commandFiles()

gg <- (ggplot(ddconfirm, aes(x=Date, y=newConfirmations, color=CountryName, group=CountryName))
	+ geom_point()
	+ geom_line()
	+ scale_y_log10()
	+ facet_wrap(~CountryName,scale="free")
	+ theme(legend.position="bottom")
)

print(gg)

saveEnvironment()
