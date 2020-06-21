# Split 

# The split() function takes a vector or other objects and splits it into groups
# determined by a factor or list of factors. 

str(split) 
#where
# x is a vector (or list) or data frame 
# f is a factor (or coerced to one) or a list of factors 
# drop indicates whether empty factors levels should be dropped

# The combination of split() and a function like lapply() or sapply()
# is a common paradigm in R. The basic idea is that you can take a data
# structure, split it into subsets defined by another variable, and apply a 
# function over those subsets. 

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f) 

lapply(split(x, f), mean) 

library(datasets) 
head(airquality)

s <- split(airquality, airquality$Month) 

str(s) 

lapply(s, function(x) {
  colMeans(x[, c("Ozone", "Solar.R", "Wind")]) # he defines a function to take
})                                            # only 3 columns

lapply(s, colMeans)  

lapply(s, function(x) {
  colMeans(x[, c("Ozone", "Solar.R", "Wind")]) 
}) 


sapply(s, function(x) {
  colMeans(x[, c("Ozone", "Solar.R", "Wind")])
}) 

sapply(s, function(x) {
  colMeans(x, 
           na.rm = TRUE) 
}) 

sapply(s, colMeans, na.rm = TRUE) 


# Occasionally,we may want to split an R object according to levels defined 
# in more than one variable. We can do this by creating an interaction of the
# variables with the interaction() function.

x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2) 
f1 
f2
interaction(f1, f2)

str(split(x, list(f1, f2))) 
split(x, list(f1, f2))

str(split(x, list(f1, f2), drop = TRUE)) 
