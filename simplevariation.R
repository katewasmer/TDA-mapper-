set.seed(20)

x <- runif(30)
noise <- runif(30, min = -.07, max = .07)
y <- x + noise
data <- data.frame(x,y)
plot(data, asp = 1.25, xlim = c(-.25, 1), ylim = c(-.25, 1))