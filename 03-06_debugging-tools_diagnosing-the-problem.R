# functions for message, warning and error: message, warning, stop
# condition (assertion)

log(-1) # produces warning

printmessage <- function(x) {
  if(x > 0) {
    print("x is greater than zero")
  }
  else {
    print("x is less than or equal to zero")
  }
  invisible(x) # this returns x, but prevents autoprinting
}

printmessage(1)
#printmessage(NA) # produces error

printmessage2 <- function(x) {
  if(is.na(x)) {
    print("x is a missing value!")
  }
  else if(x > 0) {
    print("x is greater than zero")
  }
  else {
    print("x is less than or equal to zero")
  }
  invisible(x) # this returns x, but prevents autoprinting
}
x <- log(-1) # produces warning
printmessage2(x) 

