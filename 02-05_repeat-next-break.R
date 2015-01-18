x0 <- 1
tol <- 1e-8

repeat {
  x1 <- rbinom(1, 1, 0.5)
  print(x1)

  if(abs(x1 - x0) < tol) {
    break
  }
  else {
    x0 <- x1
  }
}

for(i in 1:100) {
  if(i <= 2) {
    # skip the first 20 iterations
    next
  }
  if(i > 10) {
    break
  }
  print(i)
}

