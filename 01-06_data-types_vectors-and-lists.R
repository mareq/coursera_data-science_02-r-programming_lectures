x <- c(0.5, 0.6)
x
class(x)
x <- c(TRUE, FALSE)
x
class(x)
x <- c(T, F)
x
class(x)
x <- c("a", "b", "c")
x
class(x)
x <- 9:29
x
class(x)
x <- c(1+0i, 2+4i)
x
class(x)
x <- vector("numeric", length = 10)
x
class(x)

y <- c(1.7, "a")
y
class(y)
y <- c(TRUE, 2)
y
class(y)
y <- c("a", TRUE)
y
class(y)

x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
as.complex(x)

x <- c("a", "b", "c")
as.numeric(x) # produces warning: character can not be converted to numeric
as.logical(x) # no warning? why?
as.complex(x) # produces warning: character can not be converted to numeric

x <- list(1, "a", TRUE, 1+41, c(1,2), 23:42)
x

