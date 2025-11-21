## This is kappaMS created 2025 Nov 19 (Wed)
## Paper 1 of the Roswell conjecture project

current: target
-include target.mk
Ignore = target.mk

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources +=  draft.tex inc.tex comms.tex
## draft.pdf: draft.tex doc.md
## doc.inc.tex: doc.md
draft.texdeps.mk: doc.inc.texdeps.mk

Sources += $(wildcard *.md)
Ignore += $(wildcard *.html)

Ignore += *.inc.tex
%.inc.tex: %.md
	$(pandoc)

######################################################################

Sources += $(wildcard *.R)

lsFig.Rout: lsFig.R kappa/lsCurves.rds kappa/lsDensity.rds
	$(pipeR)

######################################################################

## Linking directories

Ignore += legacy
legacy/outputs/%: | legacy
lgit = https://git@git.overleaf.com/6656039e718682018f3b43f2
legacy: dir=../emergentHeterogeneity
legacy:
	$(linkdirname) || (git clone $(lgit) $@ && ls $@/Makefile)
	cd $@ && $(MAKE) Makefile

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

Ignore += $(hotdirs)

updatedirs: | $(hotdirs)
	$(MAKE) $(hotdirs:%=%.pull)

######################################################################

## Mirroring

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

## ln -s ../makestuff . ## Do this first if you want a linked makestuff
Makefile: makestuff/00.stamp
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

-include makestuff/git.mk
-include makestuff/visual.mk
