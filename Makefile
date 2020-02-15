## This is cfshi/coronavirus
## Made by Chyun to respond to the February CIHR call

current: target
-include target.mk

# include makestuff/perl.def

## Team info, I think; 
## https://www.researchnet-recherchenet.ca/rnr16/vwOpprtntyDtls.do?prog=3248#howtoapply

######################################################################

# Content

Sources += auto.rmu ## Old-style ref machinery

## Sources += outbreak_timeline.md proposal.md README.md
Sources += $(wildcard *.md)

Ignore += *.gh.html
## proposal.gh.html: proposal.md
## proposal.md.f23bbe90.oldfile

## Using mkd for mkd that is target instead of source
Ignore += *.mkd
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

## Latex-ing 

## Sources += proposal.tex propHead.tex propParams.tex commands.tex
## Sources += proposal.bib content.tex appendix.tex

## Proposal (prop merged back into proposal)
cihr_proposal.pdf: cihr_proposal.tex appendix.tex content.tex
cihr_proposal.pdf: propHead.tex propParams.tex commands.tex

######################################################################

## BCCDC

## downcall naveed.docx ##
Ignore += naveed.docx

Sources += naveed.md
# naveed.gh.html: naveed.md

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
-include makestuff/texdeps.mk
-include makestuff/visual.mk
-include makestuff/hotcold.mk
-include makestuff/cihrpaste.mk
-include makestuff/projdir.mk
