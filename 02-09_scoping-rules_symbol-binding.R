search() # get ordered search list of environments (kind-of-scopes)
# .GlobalEnv ... <everything else> ... package:base

# library() loads package (by default) to position 2 (i.e. directly after .GlobEnv) in search() list
library(KernSmooth)
search()

head(lm) # this is the one from package:stats
lm <- function(x) { x * x }
lm # this is the one from .GlobalEnv (.GlobEnv comes before package:stats in search() list)
lm(42)

# R has separate namespaces for functions and non-functions
lm <- matrix(1:6, 2, 3)
#lm(42) # but there can be only one symbol in any environment (both function and matrix named lm are on .GlobalEnv here and that is why this produces error)

# function + environment -> function closure
z <- 1 # see lexical vs. dynamic scoping in next section
f <- function(x,y) {
  x^2 + y / z
}
z <- 5 # see lexical vs. dynamic scoping in next section
f(2,1) # function f is defined and called from global environment which makes impression of dynamic scoping

