make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}
cube <- make.power(3)
square <- make.power(2)
cube(3)
square(3)

ls(environment(cube))
get("n", environment(cube))
ls(environment(square))
get("n", environment(square))

# lexical (R) vs. dynamic (C) scoping
y <- 10 # global scope's y used by g function
f <- function(x) {
  y <- 2 # this overshadows the global scope's y
  y^2 + g(x)
}
g <- function(x) {
  x * y # y == 10, because g is defined in global environment and y is assigned value 10 there
}
f(3)

# in S-PLUS (as opposed to R), free variables are not looked up in defining environment, but rather in global environment


