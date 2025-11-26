
The current focal output file is draft.pdf. You can see a recent copy in outputs/draft.pdf, or you can make your own (see below). The file to edit for MS content is doc.tex.

You should be able to make this repo “work” – that is, make all the figures from code, and then make the document – as follows.

* Clone the repo
* say `make setup` (once per location)
* say `make view`

If `make view` reports that it's trying to open something but doesn't, you can open it manually.

When finished, say `make output` if you want to stage your version of the draft.

You are also encouraged to try `make sync` to sync between your repo and the cloud. This takes care of staging and checking. It will try very hard to open an editor, first by checking your environment variables, then by trying some standard unix editors. The first thing it tries is its “own” editor variable, MSEDITOR, so you can also try setting that (e.g., in .bashrc).

If you come back to work after others have worked, say `make update`

Please let Jonathan know if you have any make-related problems. I keep trying to make my tools better.

----------------------------------------------------------------------

If you have done `make setup` you should be able to look at the MSEDITOR definition in makestuff/unix.mk
