str(str)
str(lm)
str(ls)

x <- rnorm(100, 2, 4)
summary(x)
str(x)

f <- gl(40, 10)
summary(f)
str(f)

library(datasets)
head(airquality)
summary(airquality)
str(airquality)

m <- matrix(rnorm(100), 10, 10)
summary(m)
str(m)

s <- split(airquality, airquality$Month)
summary(s)
str(s)

