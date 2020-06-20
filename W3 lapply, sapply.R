################################################################################
                              # Week 3 #
################################################################################
                             # Loop Function #

# compact way to write in the comand line

# LAPPLY: apply a function to each element of some list
# SAPPLY
# APPLY
# TAPPLY
# MAPPLY

# SPLIT : useful in conjuction with lapply 


#LAPPLY ------- (list, function, .....) Iif x is not a list, r will coerce it
# (if it is possible)

#lapply
# When you pass a function to lapply(), lapply() takes elements of the list and 
# passes them as the firstargument ofthefunctionyouareapplying

function (X, FUN, ...) 
{
  FUN <- match.fun(FUN)
  if (!is.vector(X) || is.object(X)) # t the actual looping is done internally
  # in C code for efficiency reasons
    X <- as.list(X)
  .Internal(lapply(X, FUN))
}


x <- list(a = 1:5, b = rnorm(10)) 
lapply(x, mean) # return a lists (with the same names) !!!

# When you pass a function to another function, you do not need to include 
# the open and closed parentheses () like you do when you are calling a
# function

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5)) 
lapply(x, mean)


x <- 1:4 #You can use lapply() to evaluate a function multiple times each with 
# a different argument
lapply(x, runif)

# How would you be able to specify different values for that in the context of 
# lapply()?

#  Any arguments that you place in the ... argument will get passed down to the 
# function being applied to the elements of the list

x <- 1:4 
lapply(x, runif, min = 0, max = 10)


# anonymous functions: functions made on the fly 
# Oncethecallto lapply() isfinished, thefunction disappears  
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2)) 
x 

lapply(x, function(elt) { elt[,1] }) 
# other way ( without anonymous function)
f <- function(elt) {
        elt[, 1]
}
lapply(x, f) 


# Sapply: a variant of lapply --- simplified thes result of lapply

#  If the result is a list where every element is length 1, then a vector is
# returne

# If the result is a list where every element is a vector of the same length (>1)
#, a matrix is returned. 

# If it can’t figure things out, a list is returned

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5)) 
lapply(x,mean)
sapply(x, mean) 



