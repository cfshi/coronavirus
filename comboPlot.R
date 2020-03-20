library(ggplot2);theme_set(theme_bw())
library(tidyverse)

mindate <- as.Date("2020-01-15")

gg <- (ggplot(combodat, aes(x=date,y=score,lty=type,color=CountryName))
#	+ geom_point()
	+ geom_line()
	+ ggtitle("Red = Incidence Score, Blue = Google Trend Score")
	+ theme(legend.position="bottom")
	+ xlim(mindate,NA)
)


print(gg)
print(gg + facet_wrap(~CountryName, scale="free",ncol=2))


labeldf <- (combodat
	%>% select(CountryName)
	%>% distinct()
	%>% mutate(date=mindate+3
		, score = 100
		)
)

gg2 <- (ggplot(combodat, aes(x=date, y=score))
	+ geom_line(aes(lty=type))
	+ facet_wrap(~CountryName, scale="free",ncol=1)
	+ xlim(mindate,NA)
	+ geom_text(data=labeldf,aes(label=CountryName),group=1,vjust=1,guide=FALSE,color="black")
	+ theme(legend.position = "bottom"
		, strip.background = element_blank()
		, strip.text.x = element_blank()
		, panel.spacing=grid::unit(0,"lines")
	)
)

print(gg2)
