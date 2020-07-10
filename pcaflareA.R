#flare data shown in ggplot form 

if (!require(package = "ggplot2")){install.packages(pkgs = "ggplot2")}
if (!require(package = "viridis")){install.packages(pkgs = "viridis")}

library("ggplot2")
library("viridis")

Noise1 <- cbind(runif(200, -30,30), runif(200, 5,6))
Noise2 <- cbind(runif(200, -6,30), runif(200, -6,-5))
Noise3 <- cbind(runif(200, -6,-5), runif(200, -20,20))
Noise4 <- cbind(runif(200, 5,6), runif(200, -20,20))
Noise5 <- cbind(runif(200, -6,6), runif(200, -6,6))

flares <- rbind(Noise1, Noise2, Noise3, Noise4, Noise5)

flares1 <- data.frame(flares)

pca <- prcomp(flares1)

m <- (pca$rotation[2,1]/pca$rotation[1,1])
n <- (pca$rotation[2,2]/pca$rotation[1,2])

plot <- ggplot(flares1, aes(X1,X2)) + geom_point(aes(color = X1)) + scale_color_viridis(option = "D") + coord_fixed()
plot + geom_abline(intercept = 0, slope = m) + geom_abline(intercept = 0, slope = n)