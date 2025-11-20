## This is kappaMS created 2025 Nov 19 (Wed)
## Paper 1 of the Roswell conjecture project

current: target
-include target.mk
Ignore = target.mk

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.md)

## doc.html: doc.md
## doc.md.tex: doc.md
## doc.md.pdf: doc.md

######################################################################

## Linking directories

Makefile: | legacy

lgit = https://git@git.overleaf.com/6656039e718682018f3b43f2
legacy: dir=../emergentHeterogeneity
legacy:
	$(linkdirname) || (git clone $(lgit) $@ && ls $@/Makefile)


	

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
