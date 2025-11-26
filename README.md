
You should be able to make this repo “work” – that is, make all the figures from code, and then make the document – as follows.

* Clone the repo
* say `make setup` (once per location)
* say `make view`

When finished, say 

If you come back to work after others have worked, say `make update`

If you clone this repo, it should work to say:
```
make Makefile
make updatedirs
make draft.pdf
```

It may also work to say `make draft.pdf.go` instead, and the document may even open itself automatically.

But this will do a lot of steps, and may not work. Maybe best not to worry about it right now.

You can just look at the [pdf document instead](outputs/draft.pdf), and edit doc.md without worrying about whether you can make things for now.

----------------------------------------------------------------------

Note 2025 Nov 23 (Sun): I am struggling with the pipeline to convert markdown to pdf, and may just give up and make this a latex project. What I should probably do is make it a quarto project, but I'm afraid of getting sucked into a time trap.

Note 2025 Nov 24 (Mon): Giving up!, and converting LaTeX.
