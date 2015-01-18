i <- "q"
i
typeof(i)
class(i)
i <- 42 # default is numeric (double)
i
typeof(i)
class(i)
i <- 42L # integer needs L suffix
i
typeof(i)
class(i)
i <- 42+23i
i
typeof(i)
class(i)
i <- TRUE
i
typeof(i)
class(i)

i <- 1/0
i
typeof(i)
class(i)
i <- 0/0
i
typeof(i)
class(i)
i <- NA
i
typeof(i)
class(i)


v <- vector()
v
typeof(v)
class(v)
length(v)
v <- vector("character", 2)
v
typeof(v)
class(v)
length(v)
v <- vector("numeric", 2)
v
typeof(v)
class(v)
length(v)
v <- vector("integer", 2)
v
typeof(v)
class(v)
length(v)
v <- vector("complex", 2)
v
typeof(v)
class(v)
length(v)
v <- vector("logical", 2)
v
typeof(v)
class(v)
length(v)


# - names, dimnames
# - dimensions (e.g. matrices, arrays)
# - class
# - length
# - other user-defined attributes/metadata: attributes() function
