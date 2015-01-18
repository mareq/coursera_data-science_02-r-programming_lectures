x <- c(1, 2, NA, 4, NA, 5)
x
bad <- is.na(x)
bad
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]

t <- read.table(file = "01-21_data.in", header = T, stringsAsFactors = F, sep = ",")
t[1:6, ]

good <- complete.cases(t)
good

t[good, ]

t[good, ][1:20, ]
t[good, ][, 1:4]

