# Introduction

# Box: Kappa tutorial

# Results 

Demographic stochasticity can generate “emergent” heterogeneity even in the absence of explicit differences between individual-based rates. In simple models, this heterogeneity can be characterized in including negative binomial funky distributions of activity. We explicate the notion that this is predictable (see Box)

![
__Heterogeneity emerges even from a simple, linearized compartmental model__ due to implicit variation in recovery times among infectors. (a) Activity distributions (density curves) and secondary case distributions (density histograms) for the outset of an SIR epidemic. (b) Inequality curves for _activity_ distributions from SIR models with differing \Ro\ are identical (and indestinguishable due to overplotting); inequality in the _case_ distribution decreases with R0 towards the theoretical limit of the activity distribution.
](lsFig.Rout.pdf)

JD-Azadeh: We should work on making the second panel in a similarly simple way to the first.

But despite differences in a non-dynamic world, we find invariance in case-per-case when looking across the entire epidemic
this is the top L of legacy/figures/emergentHetPoster.pdf

![
Some histograms. Look at poster text and see what we think.
](rc/rcHist.Rout.pdf)

What is the cause of this surprise? We claim: different relative contributions of variability from between and within-cohorts across R0 (bottom C of legacy/figures/emergentHetPoster.pdf). JD-Azadeh: can you work on putting some code into kappa that can do this?

![
How components of variance are changing through time
](legacy/outputs/RcTimePlotVaryingPeak.Rout.pdf)

JD-Azadeh: I remain confused by this picture. If we look at all the time up until 1/4, $\mu$ and $\sigma_\textrm{with}^2$ are large, and changes in $\mu$ are also pretty large for the large $\beta$. How can $\sigma_\textrm{btw}^2$ be that small?




JSW: Please add a narrative statement here so that I understand the flow

JD: Is this a sufficient replacement for the poster table (top R)?

JD: How to cut? The cohort-based approach may be better for understanding, observation-based approach may be more related to practical questions

TG: Can me make a note about for epidemics with large R0, if you don't start tracking cases right from the beginning, you'll already underestimate cases/case

JD: Yes, this should go into the paper.

# Box (or appendix?) Tapan's proof?

# Discussion

