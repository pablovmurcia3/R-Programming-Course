# Mapply 

str(mapply)

# FUN is a function to apply (# arguments at least # of list)
# ... contains R objects to apply over 
# MoreArgs is a list of other arguments to FUN. 
# SIMPLIFY indicates whether the result should be simplified

# For example, the following is tedious to type
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
# With mapply(), instead we can do
mapply(rep, 1:4, 4:1) 

noise <- function(n, mean, sd) {
        rnorm(n, mean, sd)
} 

# Simulate 5 randon numbers > noise(5, 1, 2)

noise(5, 1, 2)

noise(1:5, 1:5, 2) # This only simulates 1 set of numbers, not 5

mapply(noise, 1:5, 1:5, 2) # not what we expected

# the same as: 

list(noise(1, 1, 2), noise(2, 2, 2), + noise(3, 3, 2), noise(4, 4, 2), + noise(5, 5, 2)) 

# Tapply

# tapply() is used to apply a function over subsets of a vector. 

str(tapply) 

# The arguments to tapply() are as follows:
# X is a vector 
# INDEX is a factor or a list of factors (or else they are coerced to factors)
# FUN is a function to be applied 
# ...contains other arguments to be passed FUN 
# simplify, should we simplify the result? (Like sapply)
  
x <- c(rnorm(10), runif(10), rnorm(10, 1)) 
x
# Define some groups with a factor variable 

f <- gl(3, 10) 
f <- factor(f, levels = c(1,2,3), labels = c("hombre", "mujer", "Otro"))
f

tapply(x, f, mean)

# without simplifying the result

tapply(x, f, mean, simplify = FALSE)

# We can also apply functions that return more than a single value. In this case, 
# tapply() will not simplify the result and will return a list

tapply(x, f, range) 
