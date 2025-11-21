## This is kappaMS created 2025 Nov 19 (Wed)
## Paper 1 of the Roswell conjecture project

current: target
-include target.mk
Ignore = target.mk

vim_session:
	bash -cl "vmt"

######################################################################

## Still developing this pipeline; be kind to Dushoff

Sources += $(wildcard *.md)
Ignore += $(wildcard *.html)

## doc.html: doc.md
## doc.pdf: doc.md

## Not using .TEX because I would need to worry about developing rules

Ignore += *.inc.tex
%.inc.tex: %.md
	$(pandoc)

Sources +=  draft.tex inc.tex comms.tex
## doc.inc.tex: doc.md
## draft.pdf: draft.tex doc.md
draft.texdeps.mk: doc.inc.texdeps.mk

######################################################################

## Linking directories

Ignore += legacy
legacy/outputs/%: | legacy
lgit = https://git@git.overleaf.com/6656039e718682018f3b43f2
legacy: dir=../emergentHeterogeneity
legacy:
	$(linkdirname) || (git clone $(lgit) $@ && ls $@/Makefile)

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

## -include makestuff/pipeR.mk
-include makestuff/texj.mk
-include makestuff/pandoc.mk

-include makestuff/git.mk
-include makestuff/visual.mk
