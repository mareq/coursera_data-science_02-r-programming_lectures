for(i in 1:10) {
  print(i)
}

for(zd in c(2,4,6,8,12431234)) {
  print(zd)
}

x <- c("a", "b", "c", "d")
for(i in 1:4) {
  print(x[i])
}
print(seq_along(x))
for(i in seq_along(x)) {
  print(x[i])
}
for(letter in x) {
  print(letter)
}
for(i in 1:4) print(x[i])

x <- matrix(1:6, 2, 3)
print(seq_len(42))
for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

