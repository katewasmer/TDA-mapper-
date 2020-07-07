set.seed(20)

cone <- function(x, y){
  sqrt(x^2+y^2)
}
x <- runif(2700, -1, 1)
y <- runif(2700, -1, 1)
z <- cone(x,y)

data <- data.frame(x, y, z)

data.pca <- prcomp(data) 
PCA1 <- (as.matrix(data) %*% data.pca$rotation)[,1]
PCA2 <- (as.matrix(data) %*% data.pca$rotation)[,2]
PCA3 <- (as.matrix(data) %*% data.pca$rotation)[,3]

data.pca12 <- cbind(PCA1, PCA2)
plot(data.pca12, asp = 1)

#PCA1 and PCA2 will project the domain of the x and y axes

