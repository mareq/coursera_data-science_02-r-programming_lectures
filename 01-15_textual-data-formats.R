y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, "01-15_dput.out")
new.y <- dget("01-15_dput.out")
new.y

x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file="01-15_dump.out")
rm(x, y)
source("01-15_dump.out")
x
y

