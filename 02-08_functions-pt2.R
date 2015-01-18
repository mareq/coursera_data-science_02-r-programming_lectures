f <- function(a, b = 1, c = 2, d = NULL) {
}

f <- function(a, b) {
  a^2
}
f(2) # lazy evaluation: b is never used, hence no "missing b argument" error

f <- function(a, b) {
  print(a)
  # This error only gets printed AFTER printing value of a
  # Error in print(b) : argument "b" is missing, with no default
  #print(b)
}
f(45) # lazy evaluation: error gets printed only after printing out value of a

myplot <- function(x, y, type = "l", ...) {
  plot(x, y, type = type, ...) # contents of ...-argument(s) gets just passed along
}

# ... is also used for generic programming (something like C++ templates? hopefully we'll see...)

args(paste)
# function (..., sep = " ", collapse = NULL)
# NULL

args(cat)
# function (..., file = "", sep = " ", fill = FALSE, labels = NULL,
#     append = FALSE)
# NULL
cat("foo", "bar", "baz", "qux", "", "\n") # everything that appears after ...-argument(s) must be named
cat("foo", "bar", "baz", "qux", "", "\n", sep = ":") # like sep-argument in this call
cat("foo", "bar", "baz", "qux", "", "\n", se = ":") # partial matching is *NOT* sufficient though

