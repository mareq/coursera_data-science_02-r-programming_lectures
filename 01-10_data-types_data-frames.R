# row.names attribute
# read.table(), read.csv()
# data.matrix()

x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)

x[1,"foo"]
x[1,"bar"]
x[2,"foo"]
x[2,"bar"]
x[3,"foo"]
x[3,"bar"]
x[4,"foo"]
x[4,"bar"]

x[2,"foo"] <- 42
x

