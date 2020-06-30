#1D dataset consisting of a line with slope of 1, found under simpledataset.R

set.seed(20)
x <- runif(10)
mydata <- data.frame(x,x)

plot(mydata, asp = 1)

#shows the PCA line of the 1D dataset

set.seed(20)
x <- runif(10)
mydata <- data.frame(x,x)

plot(mydata, asp = 1)

pca <- prcomp(mydata)
pca

a <- c(0, pca$rotation[2,1])
b <- c(0, pca$rotation[1,1])

mod <- lm(b ~ a)
abline(mod)

#1D dataset rotation

set.seed(20)
x <- runif(10)
mydata <- data.frame(x,x)
plot(mydata, asp=1)

mydata.pca1 <- (as.matrix(mydata) %*% mydata.pca$rotation)[,1]

mydata.pca2 <- (as.matrix(mydata) %*% mydata.pca$rotation)[,2]

mydata.pca12 <- cbind(mydata.pca1,mydata.pca2)

plot(mydata.pca12, asp=1)
abline(h = 0)
