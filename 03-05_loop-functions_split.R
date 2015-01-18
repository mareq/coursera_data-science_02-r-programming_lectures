x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f) # split x according to factor f (f denotes the group to be used for splitting)

lapply(split(x, f), mean) # this is unnecessarily compliacted
tapply(x, f, mean, simplify = FALSE) # this does exactly the same thing as the line above

library(datasets)
head(airquality)
s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")])) # this results a list
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")])) # this results a matrix (much more compact than list)
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE)) # disregard NAs

x <- rnorm(10)
x
f1 <- gl(2, 5)
f2 <- gl(5, 2)
f1
f2
interaction(f1, f2)
str(split(x, list(f1, f2)))
str(split(x, list(f1, f2), drop = TRUE)) # drop empty levels

