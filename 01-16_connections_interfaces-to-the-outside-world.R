# file
# gzfile
# bzfile
# url

f <- file("01-16_file.in", "r")
x <- readLines(f, 3)
x

gzf <- file("01-16_file.in.gz", "r")
gzx <- readLines(gzf, 3)
gzx

y <- read.table(gzf)
y

con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)

