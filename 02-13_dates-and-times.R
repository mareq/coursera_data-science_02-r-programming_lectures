x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

# POSIXct
# POSIXlt
# weekdays, months, quarters, ...

x <- Sys.time()
class(x)
unclass(x)
x
p <- as.POSIXlt(x)
names(unclass(p))
p$sec

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
class(x)
class(y)
#x - y # error: x is Date and y is POSIXlt; there is no operation defined on these mismatched types
x <- as.POSIXlt(x)
x - y

x <- as.Date("2011-03-01"); y <- as.Date("2011-02-28")
x - y # difference is 1 day (2011 was not leap year)
x <- as.Date("2012-03-01"); y <- as.Date("2012-02-28")
x - y # difference is 2 days (2012 was leap year)

x <- as.POSIXct("2012-10-25 01:00:00", tz = "CET")
y <- as.POSIXct("2012-10-25 01:00:00", tz = "GMT")
x - y # difference is 2 hours (different timezones)

