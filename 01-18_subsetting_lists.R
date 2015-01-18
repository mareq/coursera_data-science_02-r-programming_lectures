x <- list(foo = 1:4, bar = 0.6, 2.3)
x[1]
x[3]
x[[1]]

x$foo
x[["foo"]]
x["foo"]

x$bar
x[["bar"]]
x["bar"]

x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1,3)]
x[c(T,F,T)]

x <- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "foo"
x[[name]]
x[["name"]]
#x[[foo]] # error: object 'foo' not found
x[["foo"]]
x$foo

x <- list(a = list(a = list(10, 12, 14), b = list(2.14, 2.81)), b = list(6.23, 10^23))
x[[c(1,2,1)]]
x[[1]][[2]][[1]]
x[[c(2,1)]]

