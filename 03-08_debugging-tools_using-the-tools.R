# > mean(x)
# Error in mean(x) : object 'x' not found
# > traceback()
# 1: mean(x)

# > lm(y ~ x)
# Error in eval(expr, envir, enclos) : object 'y' not found
# > traceback()
# 7: eval(expr, envir, enclos)
# 6: eval(predvars, data, env)
# 5: model.frame.default(formula = y ~ x, drop.unused.levels = TRUE)
# 4: stats::model.frame(formula = y ~ x, drop.unused.levels = TRUE)
# 3: eval(expr, envir, enclos)
# 2: eval(mf, parent.frame())
# 1: lm(y ~ x)

# > debug(lm)
# > lm(y ~ x)
# debugging in: lm(y ~ x)
# debug: {
# ... lm function code ...
# }
# 
# Browse[2]> n
# debug: ret.x <- x
# Browse[2]> n
# debug: ret.y <- y
# Browse[2]> n
# debug: cl <- match.call()
# Browse[2]> n
# debug: mf <- match.call(expand.dots = FALSE)
# Browse[2]> n
# debug: m <- match(c("formula", "data", "subset", "weights", "na.action", 
#     "offset"), names(mf), 0L)
# Browse[2]> n
# debug: mf <- mf[c(1L, m)]
# Browse[2]> n
# debug: mf$drop.unused.levels <- TRUE
# Browse[2]> n
# debug: mf[[1L]] <- quote(stats::model.frame)
# Browse[2]> n
# debug: mf <- eval(mf, parent.frame())
# Browse[2]> n
# Error in eval(expr, envir, enclos) : object 'y' not found

# > options(error = recover)
# > read.csv("nosuchfile")
# Error in file(file, "rt") : cannot open the connection
# In addition: Warning message:
# In file(file, "rt") :
#  cannot open file 'nosuchfile': No such file or directory
# 
# Enter a frame number, or 0 to exit   
# # 
# 1: read.csv("nosuchfile")
# 2: read.table(file = file, header = header, sep = sep, quote = quote, dec = de
# 3: file(file, "rt")
# 
# Selection: 3
# Called from: read.table(file = file, header = header, sep = sep, quote = quote, 
#     dec = dec, fill = fill, comment.char = comment.char, ...)
# Browse[2]>
