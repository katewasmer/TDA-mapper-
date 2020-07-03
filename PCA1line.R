#1st PCA line

plot(flares, asp=1)
pca <- prcomp(flares) 

#first pca line 
x <- c(0, pca$rotation[1,1])
y <- c(0, pca$rotation[2,1])
mod <- lm(y ~ x)
abline(mod, lw = 2, col = "blue")