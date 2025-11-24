
## Such a pain, still! Not sure why xnos didn't want to work, but need to stop.

## A terrible adventure; got both xnos and quarto running. Finally, but still neither would do simple crossref. Needed to stop.

## Not using this; would need to make a template!
## Advantage would be built-in crossrefs
%.quarto.tex: %.md
	quarto render $< --to latex --template=body.tex --standalone=false -o $@

%.pandoc.tex: %.md | pandoc-xnos.pip
	. $(pypath)/bin/activate && pandoc $(pfilter) -o $@ $<
pfilter = --filter pandoc-xnos

-include makestuff/pyenv.mk
