x <- 8
{
  if(x > 3) {
    y <- 10
  } # either else must be on this line, or whole if must be enclosed in brackets
  else {
    y <- 0
  }
}
y

x <- 2
y <- if(x > 3) {
  10
} else { # else must be on this line, because there is no block around this if
  0
}
y

x <- 8
y <- if(x > 3) 10 else 0 # everything on single line: this will work well
y

x <- 2
if(x == 8 && print(x)) {
  print(T)
}
if(x == 2 && print(x)) {
  print(T)
}

