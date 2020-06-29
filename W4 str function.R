################################################################################
                                  # WEEK 4 #
###############################################################################

# The str function: most important function

# display compactly the  structure of an r object
# alternative to summary 

# STR answer the question: Whats in this object?

str(str)
 
str(lm) # give the function arguments
str(ls)

x <- rnorm(100, 2, 4)
summary(x)
str(x) # gives more info 

f <- gl(40, 10)
str(f)
summary(f)

library(datasets)
head(airquality)
str(airquality) # a good summary of the data frame !!! gives the class, the type, 
# the nrow the ncol

m <- matrix(rnorm(100),10,10)
m
str(m) 
m[,1]

s <- split(airquality, airquality$Month)
s # a list
str(s) # info of the objects in the list -- quick look at the data 

# THE MOST IMPORTANT FUNCTION IN R 










