# Repeat loops break

# repeat initiates an infinite loop right from the start.
# The only way to exit a repeat loop is to call break. 
# not so used

x0 <- 1 
tol <- 1e-8
repeat {
  x1 <- computeEstimate()     # example
if(abs(x1 - x0) < tol) { ## Close enough?
  break 
} else {
    x0 <- x1 }
}

#no guarantee it will stop ... better for loop. it has a hard limit

# Next
# to skip a iteration

for(i in 1:100) {
  if(i <= 20) {
    ## Skip the first 20 iterations 
    next 
  } ## Do something here 
  }

# break
# to exit a loop

for(i in 1:100) {
  print(i)
  if(i > 20) {
    ## Stop loop after 20 iterations 
    break 
  }
}
  
# Important
# Infinite loops (repeat, while) should generally be avoided, even if
# (you believe) they are theoretically correct. 
  

