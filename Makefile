## This is kappaMS created 2025 Nov 19 (Wed)
## Paper 1 of the Roswell conjecture project

current: target
-include target.mk
Ignore = target.mk

Sources += $(wildcard *.md)
vim_session:
	bash -cl "vmt README.md"

######################################################################

final=draft.pdf

## For a new clone
setup: Makefile updatedirs

## To catch up with work here and elsewhere
update: pullup updatedirs

## To view the final product
view: $(final)
	@echo Made $< ... trying to open
	echo "$(open) $< >& go.log &" | $(usershell)

## To save 
output: $(final).op

######################################################################

## https://github.com/dushoff/kappaMS/blob/main/outputs/draft.pdf
Sources +=  $(wildcard *.tex)
## draft.pdf: doc.tex draft.tex
draft.texdeps.mk: doc.texdeps ;

Sources += quarto.mk

######################################################################

autopipeR += defined

Sources += $(wildcard *.R)

lsFig.Rout: lsFig.R kappa/lsCurves.rds kappa/lsDensity.rds

RcAverage.Rout: RcAverage.R kappa/stackbar.rds kappa/rcHist.rds

######################################################################

## Linking directories

hotdirs += rc
rcgit = https://github.com/dushoff/rcCode
rc: dir=../rcCode
rc:
	$(linkdirname) || (git clone $(rcgit) $@ && ls $@/Makefile)
	cd $@ && $(MAKE) Makefile

hotdirs += kappa
kappagit = https://github.com/dushoff/kappaCode
kappa: dir=../kappaCode
kappa:
	$(linkdirname) || (git clone $(kappagit) $@ && ls $@/Makefile)
	cd $@ && $(MAKE) Makefile

## legacy was used to build this quickly for Weitz 🙁
Ignore += $(hotdirs) legacy

updatedirs: | $(hotdirs)
	$(MAKE) $(hotdirs:%=%.pull)

######################################################################

# Some of the members

## tapangoel1994.invite: makestuff/github.mk

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

## ln -s ../makestuff . ## Do this first if you want a linked makestuff
Makefile: makestuff/04.stamp
makestuff/%.stamp: | makestuff
	- $(RM) makestuff/*.stamp
	cd makestuff && $(MAKE) pull
	touch $@
makestuff:
	git clone --depth 1 $(msrepo)/makestuff

-include makestuff/os.mk

-include makestuff/pipeR.mk
-include makestuff/texj.mk
-include makestuff/pandoc.mk
-include makestuff/hotcold.mk

Sources += invite.mk
-include invite.mk

-include makestuff/git.mk
-include makestuff/visual.mk
