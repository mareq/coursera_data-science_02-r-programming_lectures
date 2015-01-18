x <- c(rnorm(10), runif(10), rnorm(10, 1))
x
f <- gl(3, 10)
f
tapply(x, f, mean) # apply mean function on each group (groups denoted by f) of variables (variables stored in x)
tapply(x, f, mean, simplify = FALSE)
tapply(x, f, range)

