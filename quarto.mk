## Just a random dump of stuff I might try to use if I ever take on a markdown-based project. Hopefully not much to do with this particular directory going forward.

## doc.inc.tex: doc.md

Sources += $(wildcard *.md)
Ignore += $(wildcard *.html)

Ignore += *.inc.tex
%.inc.tex: %.md
	pandoc -o $@ $<
pfilter = --filter pandoc-xnos

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
