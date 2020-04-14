library(ggplot2);theme_set(theme_bw())
library(tidyverse)

mindate <- as.Date("2020-01-15")

gg <- (ggplot(combodat, aes(x=date,y=score,color=type))
#	+ geom_point()
	+ geom_line()
	+ scale_color_manual(values=c("blue","red"))
	+ theme(legend.position="bottom")
	+ xlim(mindate,NA)
	+ facet_wrap(~Country)
)

print(gg)


quit()

labeldf <- (combodat
	%>% select(Country)
	%>% distinct()
	%>% mutate(Date=mindate+3
		, score = 100
		)
)

gg2 <- (ggplot(combodat, aes(x=Date, y=score))
	+ geom_line(aes(lty=type))
	+ facet_wrap(~Country, scale="free",ncol=1)
	+ xlim(mindate,NA)
	+ geom_text(data=labeldf,aes(label=Country),group=1,vjust=1,guide=FALSE,color="black")
	+ theme(legend.position = "bottom"
		, strip.background = element_blank()
		, strip.text.x = element_blank()
		, panel.spacing=grid::unit(0,"lines")
	)
)

print(gg2)
