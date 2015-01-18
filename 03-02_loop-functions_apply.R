x <- matrix(rnorm(6), 2, 3)
x
apply(x, 2, mean)
apply(x, 1, sum)
rowSums(x) # = apply(x, 1, sum)
rowMeans(x) # = apply(x, 1, mean)
colSums(x) # = apply(x, 2, sum)
colMeans(x) # = apply(x, 2, mean)

apply(x, 1, quantile, probs = c(0.25, 0.75))
apply(x, 2, quantile, probs = c(0.25, 0.75))

a <- array(rnorm(2 * 2 * 10), c(2, 2, 10)) # 3D
apply(a, c(1, 2), mean)
rowMeans(a, dims = 2) # dims = number of dimensions to retain

