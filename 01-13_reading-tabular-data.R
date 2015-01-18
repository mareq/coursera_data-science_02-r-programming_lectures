# read.table, read.csv, write.table
# readLines, writeLines
# source, (inverse of dump)
# dget (inverse of dput)
# load, save
# unserialize, serialize

t <- read.table(file = "01-13_table.in", header = T)
t
row.names(t)
unclass(t)

t <- read.table(file = "01-13_table.in", header = T, stringsAsFactors = F)
t
row.names(t)
unclass(t)

write.table(t, "01-13_table.out")
write.csv(t, "01-13_csv.out")
dput(t, "01-13_dput.out")

