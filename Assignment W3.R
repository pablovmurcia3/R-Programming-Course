# Assignment W3

makeVector <- function(x = numeric()) { # IMPORTANCE OF DEFAULT VALUE
  m <- NULL
  set <- function(y) {
    x <<- y      # <<- to pass an value to an objetct in the parent environment
    m <<- NULL  # important --- if I use the set() i need to set m to null again
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

myVector <- makeVector(1:15)

myVector$set(1:3)
myVector$get()
myVector$setmean(mean(1:3))
myVector$getmean()



cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

aVector <- makeVector(1:10)
aVector$get()
aVector$getmean()
aVector$set(30:50)
cachemean(aVector)
aVector$getmean()
cachemean(aVector)
##############################################################################

# The following functions takes advantage of Lexical Scoping to create an R 
# Object that stores a matrix and its inverse (that is calculated with the second
# function). The lexical scoping permits  nested functions to acess and use
# objects that are defined in the parent frame. 


# This function returns a list that contains 4 functions (two "getters" and two 
# "setters"). To do so, it includes two data objects: one of them is a formal 
# variable (the x argument that is a matrix) the other is a local variable 
# (the inv object that is set NULL). The 2 "setter" functions uses the <<- 
# assignment operator to assign a value to an object that is defined in
# the parent frame. The 2 "getter" functions retrives objects of the parent 
# frame. So the 4 nested functions takes advantage of the lexical scoping of R.


makeCacheMatrix <- function(x = matrix()) { # x is the formal variable
  inv <- NULL                         # inv is the local variable
  set <- function(y) {              
    x <<- y                   
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inv1) inv <<- inv1
  getinv <- function() inv
  list( set = set, get = get,        #  this part assigns each function
        setinv = setinv, getinv = getinv) # to a named element within a list
}


# With an object of the type makeCacheMatrix() we can use the next function to
# calculate the inverse of the matrix defined and save it. 

cacheSolve <- function(x, ...) {
  
  inv <- x$getinv()
  
  if(!is.null(inv)) {
    
    message("getting cached data")
    
    return(inv)
  }
  
  data <- x$get()
  
  inv <- solve(data)
  
  x$setinv(inv)
  
  inv
  
}


m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
m1
solve(m1)

I2 <- matrix(c(1,0,0,1), nrow = 2, ncol = 2)
I2

n1 <- matrix(c(6,2,8,4), nrow = 2, ncol = 2)
n1



myMatrix_object$get()
myMatrix_object$getinv()

myMatrix_object$set(I2)
myMatrix_object$get()


myMatrix_object <- makeCacheMatrix(m1)
cacheSolve(myMatrix_object)


myMatrix_object <- makeCacheMatrix(n1)
cacheSolve(myMatrix_object)

n2 <- matrix(c(5/8, -1/8, -7/8, 3/8), nrow = 2, ncol = 2)
myMatrix_object$set(n2)

cacheSolve(myMatrix_object)
