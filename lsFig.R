library(shellpipes)
library(ggplot2); theme_set(theme_bw())
library(patchwork)

startGraphics(height=6)

dens <- rdsRead("Density")
curve <- rdsRead("Curves")
 
print(dens + 	curve
	 # + theme(legend.position = "none")
	 + plot_layout(
	 ncol   = 2,         
	 widths = c(1, 1)    
)
)


