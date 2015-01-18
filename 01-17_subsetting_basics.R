x <- c("a", "b", "c", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[c(1,2,5)]
x[x > "a"]
u <- x > "a"
u
x[u]
x[c(T, F, T, F, T, F, T, F, T, F)]

