add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

columnmean <- function(y) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[, i])
  }
  means
}

add2(3 ,5)
above10(1:20)
above(1:20, 12)
above(1:20)
columnmean(matrix(1:6, 2, 3))

