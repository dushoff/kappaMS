
## Introduction

## Box: Kappa tutorial

## Results 

Demographic stochasticity can generate “emergent” heterogeneity even in the absence of explicit differences between individual-based rates. In simple models, this heterogeneity can be characterized in including negative binomial funky distributions of activity. We cite/elevate + (re)present the notion that this is predictable (see the Box)

![
](legacy/outputs/plotPMF_PDF_ineq.Rout.pdf)
In a linearized compartmental model, we can trace two sources of emergent heterogeneity: the first is stochastic and depends on mean of the underlying activity distribution; the second emerges from the structure of a compartmental model, and specifically, implied variation in recovery times.} Inequality in initial secondary case distributions depends on $\Ro$, inequality in activity distributions does not. (a) Activity distributions (density curves) and secondary case distributions (density histograms) for the outset of an SIR epidemic with mean recovery rate of 1/day and per-capita transmission rates of 1.5 (green) and 8 (orange). (b) Inequality curves for activity distributions from the two SIR models with differing $\Ro$ are identical (and indestinguishable due to overplotting); inequality in the secondary case distribution decreases with R0 towards the theoretical limit of the activity distribution. (c) When models include explicit heterogeneity (purple) this affects both the activity and the secondary case distributions. Orange density histograms and density curves  as in (a); purple from an analogous branching process model, now with explicit heterogeneity (23\% of cases have 6.67x the transmission rate as the other 77\% of cases, $\Ro$ still 8). (d) Structural heterogeneity (purple curves) can generate high levels of inequality even when R0 is high (e.g., 8). In panels (a,c), the secondary case distribution probability mass functions (PMFs) are plotted as density histograms with unit binwidths; in this way the ploted PMFs have area = 1, enabling visual comparison with the activity distribution density functions (smooth curves), the area under which is also 1. Because the first bin (at zero) sits at the boundary of support for each distribution, we have plotted this bin as double the density and half the width. This adjustment preserves area-to-area correspondence with the PDF, while facilitating visual comparison of the heights of the density and mass functions. 


F2 But despite differences in a non-dynamic world, we find invariance in case-per-case when looking across the entire epidemic
this is the top L of legacy/figures/emergentHetPoster.pdf

+ Add the simple proof to the SI... or main text?

F3 What is the cause of this surprise? We claim: different relative contributions of variability from between and within-cohorts across R0

bottom C of legacy/figures/emergentHetPoster.pdf

F4 is one of the new Rc plots, e.g., legacy/outputs/RcTimePlotVaryingPeak.Rout.pdf
% Please add a narrative statement here so that I understand the flow
* Is this a sufficient replacement for the poster table (top R)?
* How to cut? The cohort-based approach may be better for understanding, observation-based approach may be more related to practical questions
TG: Can me make a note about for epidemics with large R0, if you don't start tracking cases right from the beginning, you'll already underestimate cases/case

