## This is kappaMS created 2025 Nov 19 (Wed)
## Paper 1 of the Roswell conjecture project

current: target
-include target.mk
Ignore = target.mk .gitignore

pyvenv: ; $(cleanpyvenv)
-include makestuff/pyvenv.mk
-include makestuff/python.def
-include makestuff/perl.def

Sources += $(wildcard *.md)
vim_session:
	bash -ic "vmt README.md notes.md"

######################################################################

focus=draft.force.pdf
final=draft.pdf

## For a new clone
setup: Makefile
	$(MAKE) updatedirs

## To catch up with work here and elsewhere
update: pullup updatedirs

## To view the final product
## view: doc.tex draft.tex
view: $(focus)
	@echo Made $< ... trying to open
	echo "$(open) $< >& go.log &" | $(usershell)

## To save 
output: $(final).op

######################################################################

## https://github.com/dushoff/kappaMS/blob/main/outputs/draft.pdf
Sources +=  $(wildcard *.tex) add.bib draft.bib
## draft.pdf: doc.tex draft.tex
draft.texdeps.mk: doc.texdeps.mk supp.texdeps.mk

Sources += quarto.mk

######################################################################

autopipeR += defined

Sources += $(wildcard *.R)

lsFig.Rout: lsFig.R kappa/lsCurves.rds kappa/lsDensity.rds

RcAverage.Rout: RcAverage.R kappa/stackbar.rds kappa/rcHist.rds

######################################################################

:x


hotdirs += sims
ehgit = https://github.com/dushoff/ehSim
sims: dir=../ehSim
sims:
	$(linkdirname) || (git clone $(ehgit) $@ && ls $@/Makefile)
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

## FIX choke point here!!
migrateDirs: ../ehSim ../kappaCode
	$(RM) sims kappa

../%:
	$(justmakethere)

######################################################################

## Reference stuff

## Shouldn't share library on public repo
## Let me know if we need to find a way to share the library, or else curate your own
Ignore += library

## main.recs: main.rmu | Bio.pip
## main.tags.pgr: main.rmu
## main.downloads: main.rmu
## main.downloads: main.tags.pgr
## main.gfm: main.rmu
## main.reff.html: main.rmu main.gfm

######################################################################

# Some of the members

## tapangoel1994.invite: makestuff/github.mk
Sources += invite.scr

######################################################################

Ignore += legacy rc ## Mystery directories in JD's attic; probably crib files 2026 Apr 05 (Sun)

######################################################################

# Optional features (add your own MK file, or use someone else's)
-include local.mk
## jd.local: jd.MK
%.local: %.MK
	/bin/ln -fs $< local.mk

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

## ln -s ../makestuff . ## Do this first if you want a linked makestuff
Makefile: makestuff/10.stamp
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
-include makestuff/reff.mk
-include makestuff/mirror.mk

-include makestuff/git.mk
-include makestuff/visual.mk
