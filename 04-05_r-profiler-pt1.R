# elapsed time < user time
system.time(readLines("http://www.jhsph.edu"))

# elapsed time > user time
hilbert <- function(n) {
  i <- 1:n
  1 / outer(i - 1, i, "+")
}
x <- hilbert(1000)
system.time(svd(x)) # looks like svd is not multithreaded on debian system (or some configuration is needed to enable multithreaded version)

# elapsed time ~ user time
system.time({
  n <- 1000
  r <- numeric(n)
  for(i in 1:n) {
    x <- rnorm(n)
    r[i] <- mean(x)
  }
})

