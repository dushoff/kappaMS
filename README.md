
The current focal output file is draft.pdf. You can see a recent copy in outputs/draft.pdf, or you can make your own (see below). The file to edit for MS content is doc.tex.

## Getting started

You should be able to make this repo “work” – that is, make all the figures from code, and then make the document – as follows.

* Clone the repo
* say `make setup` (once per location)
* say `make view`

If `make view` reports that it's trying to open something but doesn't, you can open it manually.

When finished, say `make output` if you want to stage your version of the draft.

## Saving work

You are also encouraged to try `make sync` to sync between your repo and the cloud. This takes care of staging and checking. It will try very hard to open an editor, first by checking your environment variables, then by trying some standard unix editors. The first thing it tries is its “own” editor variable, MSEDITOR, so you can also try setting that (e.g., in .bashrc).

## Coming back

If you come back to work after others have worked, say `make update`

Please let Jonathan know if you have any make-related problems. I keep trying to make my tools better.

## Bibliography

It should work to add things manually to add.bib, or else to add identifiers to main.rmu. We should try to move to the `main` and not rely on manual, except for arxiv and web links, but this is not a high priority

## Library

If you play with the bib stuff, you may get a local copy of library/ with some of the reference pdfs. We can work later on trying to share this folder.

----------------------------------------------------------------------

If you have done `make setup` you should be able to look at the MSEDITOR definition in makestuff/unix.mk

## Editing notes from Tapan
09/22/2026

### Framing results:
- Heterogeneity in linearized SIR model emerges from implicit individual variation as is R0 dependent.
	- The recovery times are exponentially distributed.
	- The realized distribution of secondary cases results from the mixture of a poisson contact process with the exponential recovery time distribution.
	- The realized distribution is geometric and its mean and dispersion (which is a measure of heterogeneity as described in the box) depend on R0.
	- This heterogeneity does not account for the fact that as the epidemic progresses, the number of susceptible individuals and infectious indviduals changes, which alters the statistics of the contact process.
	- All of this maps to figure 1 -- showing the secondary case distributions and the inequality curves.
- Heterogeneity in secondary cases over the entire epidemic is independent of R0!
	- Individual based simulations of the SIR model suggest that secondary case distributions are identical across R0s (Note: This might open us to scooping of the second paper)
	- The mean of the distribution is 1. This is well known and intuitive since all secondary cases arise from the first infector. 
	- Interestingly, the dispersion of the distribution is also 1, irrespective of R0 (point to figure 2a)
	- We verify this to be true numerically across values of R0 using the ODE-based SIR model as well (point to new figure 2b which is an area plot of the within- and between- cohort variances across more values of R0). 
- Proof that heterogeneity in secondary cases over the entire epidemic is independent of R0!
	- move the proof (a shorter version) from SI to main. 
	- Proof relies on assumption that infectious period distribution is memoryless.
	- There is a sticky point about the initial condition modifying the results a little bit (maybe for discussion)
- Within- and between-cohort contributions to dispersion/variance
	- To understand why the heterogeneity is invariant, we partition the variation coming from two sources -- within- and between-cohort components.
	- A cohort is simply a group of infectors that become infectious around the same time (Point to figure 3, add labels to define a cohort, maybe add an incidence plot?).
		- Within a cohort, individuals more-or-less contend with the same size of susceptible pool. So within cohort variation arises from the intrinsic variation in the recovery times within the cohort.
		- across cohorts, individuals have access to susceptible pools of different sizes. The between-cohort variance is driven by susceptible depletion over the epidemic.
	- Point to figure 3:
		- As R0 increases, the number of infectious individuals rise and fall rapidly, creating large differences in the size of infectious cohorts.
		- As R0 increases, the susceptible pool also declines very very rapidly. So as R0 increases, the effects of susceptible depletion become stronger.
	- Point to figure 4a: 
		- If we normalize time to that the peaks of the incidence curves coincide, we see that increased R0 leads to larger variation in cohort sizes.
		- Further, as R0 increases, the mean number secondary cases declines rapidly across cohorts (figure 4b). This results in an increased between cohort variance in the number of secondary cases.
		- The within-cohort variance is more complex:
			- (Figure 4c) For a given R0, the within cohort dispersion first decreases, hitting a minimum at time of peak incidence and then increases till it flatlines.
			- Across R0s, the minimum decreases as R0 increases.
			- (Need a 4d for cohort size weighted within-cohort dispersion) Since the largest cohort co-occurs with the lowest within-cohort dispersion, the cohort size weighted contributions of within-cohort dispersion to the total variance becomes smaller as R0 increases.
	- So, as R0 increases, the heterogeneity from within-cohort differences decreases and from between cohort differences increases, compensating each other.
	- These changes in within- and between-cohort variance are driven by susceptible depletion. 
		- for low R0, cohorts over time dont see much differences in susceptible pools. As a result, the variance is driven primarily by within-cohort heterogeneities.
		- for high R0, early cohorts see very large susceptible pools while later cohorts see almost no suceptible individuals. So, there is large variation in secondary cases between cohorts. But most of the cohorts (late ones especially) see no susceptibles and therefore have no differences in realized number of secondary cases. 
- Need to think about how to use the new SI figures.

