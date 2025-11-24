library(shellpipes)
library(ggplot2); theme_set(theme_bw())
library(patchwork)
loadEnvironments()

startGraphics(height=5)

stackplot <- rdsRead("stackbar")
rcHistplot <- rdsRead("rcHist")
 
print((rcHistplot + theme(legend.position = "none"))/stackplot)



