#PCA rotation using the ggplot2() package 

#set seed before establishing runif values so that the numbers aren't randomized and each student gets the same PCA

if (!require(package = "ggplot2")){install.packages(pkgs = "ggplot2")}
if (!require(package = "viridis")){install.packages(pkgs = "viridis")}

set.seed(10)

Noise1 <- cbind(runif(200, -30,30), runif(200, 5,6))
Noise2 <- cbind(runif(200, -6,30), runif(200, -6,-5))
Noise3 <- cbind(runif(200, -6,-5), runif(200, -20,20))
Noise4 <- cbind(runif(200, 5,6), runif(200, -20,20))
Noise5 <- cbind(runif(200, -6,6), runif(200, -6,6))

flares <- rbind(Noise1, Noise2, Noise3, Noise4, Noise5)

flares1 <- data.frame(flares)

pca <- prcomp(flares1)

PCA1 <- (as.matrix(flares1) %*% pca$rotation)[,1]
PCA2 <- (as.matrix(flares1) %*% pca$rotation)[,2]
PCA12 <- cbind(PCA1,PCA2)

PCA_12 <- data.frame(PCA12)

#slope for PC1 line 
m <- (pca$rotation[2,1]/pca$rotation[1,1])
#slope for PC2 line 
n <- (pca$rotation[2,2]/pca$rotation[1,2])

pca.plot <- ggplot(PCA_12, aes(PCA1,PCA2)) + geom_point(aes(color = PCA1)) + scale_color_viridis(option = "D") + coord_fixed()
pca.plot + geom_abline(intercept = 0, slope = m) + geom_abline(intercept = 0, slope = n)

