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

# all things are objects --- with ATOMIC cLASSES

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
d

#Factors
#special type of vector --- in categorical data
#unorered or ordered ---- ordered is when the categories have rank
#an integer vector where each integer has a label 
#better than using integers --- factors are self describing 
# the ATTRIBUTE is the levels

x <- factor(c("yes","yes", "no","yes", "no"))
x # we can see the labels
table(x)

unclass(x) #bring it down to an integer vector


x <- factor(c("yes","yes", "no","yes", "no"), levels =c("yes", "no"))
#select baseline level --- the first level of the factor
#default is for alphabetic order
unclass(x) #now yes is the baseline level 

# Missing values (NA, NaN)
#NaN is for undifined mathematical operations
#test for NA
is.na() #return a logical vector 
is.nan()
# A NaN value is also a NA but the converse is NOT true

#Data Frame -- tabular data

#a special list (each element of the list can be thought as a column)
#each column does not need to be of the same type

#SPECIAL ATTRIBUTES
# row.names


#create a matrix by a data frame
data.matrix() #coerce to a sinngle type 

x <- data.frame(foo =1:4, bar =c(T,T,F,F)) 
nrow(x)
ncol(x)

#Names Attribute

#readable code - self describing objects
#in vectors
x <- 1:3
names(x) <- c("f","d","h")
x
names(x)
#in list
x <- list(a=1, b=2, c=3)
x
#in matrices dimnames

x <- matrix(1:4, nrow=2)
dimnames(x) <- list(c("a", "b"), c("c","d")) 
#first vector = of row names, second vector of column names
x
############################################################




