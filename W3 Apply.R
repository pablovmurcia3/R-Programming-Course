# Apply 


# Useful to evaluate a function on the margins of an array

# Most common array = Matrix  (which is just a 2-dimensional array).

# so it is commonly used to apply function to the rows or columns of a matrix

# involves less typing

str(apply)

# X an array
# MARGIN is an integer vector indicating which margins should be retained
# FUN function that you whant to apply
# ... other arguments to be passed to FUN

x <- matrix(rnorm(200), 20, 10) 

apply(x, 2, mean) # mean of the columns

apply (x, 1, sum) # sum of the rows

apply(x, 2, mean)
#because I want to collapse the first dimension (the rows) by taking the mean
# and I want to preserve the number of columns. Similarly, 

apply(x, 1, mean)
# because I want to collapse the columns (the second dimension) and preserve 
# the number of rows (the first dimension). 

# .. returns a vector

# some shortcut (much faster !)

rowSums = apply(x, 1, sum) 
rowSums(x)
rowMeans = apply(x, 1, mean) 
colSums = apply(x, 2, sum) 
colMeans = apply(x, 2, mean)
colMeans(x)


x <- matrix(rnorm(200), 20, 10) 
x
apply(x, 1, quantile, probs = c(0.25, 0.75))  # result: A matrix (2:20)


# A higher dimensional example
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10)) 
apply(a, c(1, 2), mean)
