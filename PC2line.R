#2nd PCA line 

plot(flares, asp=1)
pca <- prcomp(flares) 

w <- c(0, pca$rotation[1,2])
z <- c(0, pca$rotation[2,2])
mod1 <- lm(z ~ w)
abline(mod1, lw = 2, col = "red")