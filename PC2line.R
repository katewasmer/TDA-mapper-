plot(flares, asp=1)
pca <- prcomp(flares) 

#PCA1 line 
x <- c(0, pca$rotation[1,1])
y <- c(0, pca$rotation[2,1])
mod <- lm(y ~ x)
abline(mod, lw = 2, col = "blue")

#PCA2 line 
w <- c(0, pca$rotation[1,2])
z <- c(0, pca$rotation[2,2])
mod1 <- lm(z ~ w)
abline(mod1, lw = 2, col = "red")
