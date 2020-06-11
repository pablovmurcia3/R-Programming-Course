##############################################################
                             # Week 2
##############################################################

# Control structures : Control structures in R allow you to 
# control the flow of an R program



# if else
# 1.
if(<condition>)
  { ## do something  
  } ## Continue with rest of code

#2.
if(<condition>) {
  ## do something 
} else { 
    ## do something else 
  }
  
#3
if(<condition1>) {
  ## do something 
} else if(<condition2>) {    # there can be any number of else if
    ## do something different 
} else {
    ## do something different 
  }
  
# examples 
  
x <- runif(1, 0, 10) 
x

if(x > 3) { 
  y <- 10 
  print(y)
} else { 
    y <- 0 
    print(y)
}


# This expression can also be written a different, 
# but equivalent, way in R.
y <- if(x > 3) {
  10 
} else { 
    0 
}
y

# else is not a clause necessary, you can: 

if(<condition1>) {
}
if(<condition2>) {
}

#and run everything


