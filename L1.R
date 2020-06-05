#############################################################################
                          # WEEK 1 #
#############################################################################

#working directory 
getwd()
# use read.csv only in the data in this directory

################ Getting Started and R Nuts and Bolts ######################

# we type expressions in R ---- Obects assign
 
msg <- "hello"

msg # auto-printing
print(msg) #explicit printing

# the 1 in []? the number if the element of the vector

x <- 1:20
x[3]


#Data types

# all things are objects --- with classes

# vector (elements of the same class) --- c()
#special type list ::: different classes of elementes in one vector

vector()
c(,,,,)

#a object can have -- attributes (class, names, dimensiones, lenght) 

attributes(x)

vector("numeric", length=2)


# mixing classes --- Aware --- you wont get an error 

x <- c(TRUE, 2)
x <- c("text", TRUE)

#Coercion

x <- 0:6
class(x)

as.numeric(x) # interger different to numeric

as.logical(x)

as.character(x)

# not everytime works

# LIST

x <- list(1,"a", TRUE, 1 + 4i)

x # not like the vector  [[]] is the element

#Matrices = object tha have a special attribute of
#Dimension (itself a interger lenght 2 (nrow, ncol))

x<-matrix(1:4,nrow=2)
attributes(x) # we have a attribute! the dim
dim(x)


#construct column-wise starting in the upper lect 

#other form to construct a matrix
m <- 1:10
dim(m) <- c(2,5)
m

#bidding -- Other way

x <- 1:3
y <- 10:12 

cbind(x,y)
rbind(x,y)

















