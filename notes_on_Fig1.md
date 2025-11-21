# Reproducing the right panel of `plotPMF_PDF_ineq.Rout`
**Secondary cases distribution (Geometric Distribution)**

- In the original code, 20K samples are drawn from the Geometric distribution, and then the cumulative fraction is calculated and plotted.

- Azadeh used the relation $F_{\text{trans}}(x)=\frac{1}{R_0}\sum_{v=0}^x vG(v,R_0)$ which is the fraction of cases
due to those caused up to $x$ secondary cases.
Hence, the fraction of cases due to those caused more than $x$ cases would be $1-F_{\text{trans}}(x)$ 
The population fraction of these individuals would be $1 - P(x)$, where $P(x)$ is the CDF of those caused no more than $x$ secondary cases.




