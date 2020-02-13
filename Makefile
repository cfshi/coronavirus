## This is cfshi/coronavirus
## Made by Chyun to respond to the February CIHR call

current: target
-include target.mk

# include makestuff/perl.def

######################################################################

# Content

Sources += auto.rmu ## Old-style ref machinery

## Sources += outbreak_timeline.md proposal.md README.md
Sources += $(wildcard *.md)

Ignore += *.gh.html
## proposal.gh.html: proposal.md
## proposal.md.f23bbe90.oldfile

questions.mkd: proposal.md
	$(rm)
	perl -npE "last if /Resources/" $< > $@
	$(readonly)

questions.gh.html: questions.mkd

## Not working; it shows the master README (but nothing else)
## Don't play now ☺
## https://cfshi.github.io/coronavirus/README.gh.html

######################################################################

## Machinery

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

-include makestuff/os.mk

## -include makestuff/wrapR.mk
-include makestuff/pandoc.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
