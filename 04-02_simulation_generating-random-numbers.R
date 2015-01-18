# functions: rnorm, dnorm, pnorm, rpois
# function name prefixes: d (density), r (random number generation), p (cumulative distribution), q (quantile function)

x <- rnorm(10)
x

x <- rnorm(10, 20, 2) # mean = 20, standard deviation = 2
x
summary(x)

set.seed(1)
rnorm(5)    # <--- these two sets will be equal
rnorm(5)    #   |
set.seed(1) #   |
rnorm(5)    # <-/

rpois(10, 1)
rpois(10, 2)
rpois(10, 20)

# cumulative distributions
ppois(2, 2) # Pr(x <= 2)
ppois(4, 2) # Pr(x <= 4)
ppois(6, 2) # Pr(x <= 6)

