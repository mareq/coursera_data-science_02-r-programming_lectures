na <- NA
class(na)
typeof(na)
is.na(na)
is.nan(na) # FALSE

nan <- NaN
class(nan)
typeof(nan)
is.na(nan) # TRUE (NaN is-a NA)
is.nan(nan)

x <- c(1, 2, NA, 10, 3)
is.nan(x)
x <- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)

