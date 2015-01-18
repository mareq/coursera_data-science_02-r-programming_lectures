x <- list(aardvark = 1:5, foobar = "bar", foobaz = "baz", fooqux = "qux")
x$a # matches aardvark
x[["a"]] # NULL
x[["a", exact = FALSE]] # matches aardvark

x$foo # NULL (ambiguous)
x$fooq # matches fooqux

