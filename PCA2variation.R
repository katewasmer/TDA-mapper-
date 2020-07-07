set.seed(20)

x <- runif(30)
noise <- runif(30, min = -.07, max = .07)
y <- x + noise
data <- data.frame(x,y)
plot(data, asp = 1.25, xlim = c(-.25, 1), ylim = c(-.25,1))

pca <- prcomp(data)
pca

b <- c(0, pca$rotation[2,1])
a <- c(0, pca$rotation[1,1])
mod <- lm(b ~ a)
abline(mod, lw = 2, col = "blue")

d <- c(0, pca$rotation[2,2])
c <- c(0, pca$rotation[1,2])
mod1 <- lm(d ~ c)
abline(mod1, lw = 2, col = "red")