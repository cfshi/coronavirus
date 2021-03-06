## This is cfshi/coronavirus
## Made by Chyun to respond to the February CIHR call

current: target
-include target.mk

-include makestuff/perl.def

## Team info, I think; 
## https://www.researchnet-recherchenet.ca/rnr16/vwOpprtntyDtls.do?prog=3248#howtoapply

######################################################################

# Survey

Sources += MREB.app.md

######################################################################

# grant dev

## Sources += outbreak_timeline.md proposal.md README.md
Sources += attachments.md budget.md coding_book.md comments.md core.md fake_researchnet.md LICENSE.md meeting_notes.md naveed.md outbreak_timeline.md proposal.md proposal_MLiCmts.md README.md RQ.md summary.md team.md todo.md
Sources += attachments.md budget.md coding_book.md comments.md core.md fake_researchnet.md LICENSE.md meeting_notes.md naveed.md outbreak_timeline.md proposal.md proposal_MLiCmts.md README.md RQ.md summary.md team.md todo.md summary_head.md

Ignore += budget.ltx.pdf
## budget.ltx.pdf: budget.md

Ignore += *.gh.html
## summary.gh.html: summary.md
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


Ignore += resources
resources: dir=~/Dropbox/coronaCommunication
resources: 
	$(linkdirname)

Ignore += dean.pdf
dean.pdf: resources/submission.pdf
	pdfjam $< 6,8-12,36-37 -o $@

######################################################################

## Latex-ing 

Drop = ~/Dropbox

Sources += auto.rmu ## Old-style ref machinery
Ignore += auto.bib auto.md

auto.html: auto.rmu
auto.md: auto.rmu
auto.bib: auto.rmu

Sources += proposal.bib

## content.tex.bd1a1f792ecf5efd40cdcd9bdf6df57c106bdae0.oldfile

## Proposal
Sources += cihr_proposal.tex appendix.tex content.tex
Sources += propHead.tex propParams.tex commands.tex

cihr_proposal.pdf: cihr_proposal.tex appendix.tex content.tex
cihr_proposal.pdf: propHead.tex propParams.tex commands.tex
## cihr_proposal.log
## cihr_proposal.blg

Ignore += proposal_part.pdf dump.txt
proposal_part.pdf: cihr_proposal.pdf
	pdfjam $< 1-5 -o $@
	
Ignore += reference_part.pdf
reference_part.pdf: cihr_proposal.pdf
	pdfjam $< 6- -o $@

Sources += git.log
log:
	git log > git.log

######################################################################

## BCCDC

## downcall naveed.docx ##
Ignore += naveed.docx

Sources += naveed.md abstract.md
# naveed.gh.html: naveed.md
# core.gh.html: core.md

######################################################################

## Not clear whether this chains yet 2020 Mar 05 (Thu)

pardirs += datarepos

dr += JHU

Ignore += $(dr)
$(dr):
	cd .. && $(MAKE) datarepos/$@
	$(LNF) ../datarepos/$@ .

JHU/%: JHU
Ignore += cases.csv

######################################################################

Sources += $(wildcard *.R)

runmake = TURE

gtrends.Rout: gtrends.R
	$(makeR)

clean_gt.Rout: clean_gt.R gtrends.rda
	$(makeR)

confirmed_cases.Rout: confirmed_cases.R
	$(makeR)

confirmed_cases_plot.Rout: confirmed_cases_plot.R confirmed_cases.rda
	$(makeR)

combo.Rout: combo.R clean_gt.rda confirmed_cases.rda
	$(makeR)

comboPlot.Rout: comboPlot.R combo.rda 
	$(makeR)

## Not sure what this is about
combo_world.Rout: combo_world.R
	$(makeR)

combo_worldPlot.Rout: combo_worldPlot.R combo_world.rda
	$(run-R)

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

-include makestuff/makeR.mk
-include makestuff/texdeps.mk
-include makestuff/cihrpaste.mk
-include makestuff/autorefs.mk
-include makestuff/pandoc.mk

-include makestuff/git.mk
-include makestuff/visual.mk
