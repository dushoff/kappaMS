library(shellpipes)
library(ggplot2); theme_set(theme_bw())
library(patchwork)

startGraphics(height=4)

dens <- rdsRead("Density")
curve <- rdsRead("Curves")
 
print(dens + 
	(curve + theme(legend.position = "none"))
)


