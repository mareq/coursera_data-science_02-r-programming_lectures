# y = Beta0 + Beta1 * x + eps
# where: eps ~ N(0.2^2)
# assume: x ~ N(0.1^2), Beta0 = 0.5, Beta1 = 2
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

set.seed(10)
x <- rbinom(100, 1, 0.5) # binomial distribution
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

# Y ~ Poisson(mu)
# log(mu) = Beta0 + Beta1 * x
# assume: Beta0 = 0.5, Beta1 = 0.3
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x, y)

