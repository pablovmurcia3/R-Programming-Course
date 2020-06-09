# Read and Write data
# 1 Read data
#some functions for read data

#READ.TABLE --- DEFAULT SEPARATOR A SPACE
#Some important arguments
#file: name od a file, or a conection 
#header:logical indicating if the file has a header line
#sep: string indicating how the columns are separated (,;)
#colClasses: a character vector indicating the class of each column in the dataset
#nrows
#comment.char , a character string indicating the comment character (#)
#skip: number of lines to skip from the beginning
#strinAsFactors: should character variables be coded as factors? -- default:true

#For small to moderately sized datasets, i can use read.table without specifying any other arguments

# READ.CSV --- DEFAULT SEPARATOR A COMMA --- IDENTICAL TO READ.TABLE
#          --- DEFAULT HEADER = TRUE



#READING LARGE TABLES

# Calculation: rough claculation of the meory required to store your dataset

# set comment.char = "" if there are no comment lines in the file 

#colClasses argument -- is muchs faster 

# if all columns are numeric -- set colclasses = "numeric"
# if we dont know the classes: qick and dirty way to figure out the classes

initial <- read.table("datatable.txt", nrows = 100) #we can use 100 rows
classes <- sapply(initial, class) #store the classes
tabAll <- read.table("datatable.txt", colClasses = classes)


# nrows (helps memory usages) --- mild overstimate is okay

# Know THY SYSTEM 
#CLACULATION MEMORY REQUIREMENTS



# read metadata
#sorce (inverse of dump)
#dget (inverse of dput)


# 2 Write data

# write.table
# WriteLines
#
#Textual Formats (preserve some metadata) ---- (like classes and labels) -- (Unix philosophy)
#dumping
#dputing
# downside -- takes alot of space
#DPUT
y <- data.frame(a=1, b=1)
dput(y) # 
dput(y, file = "y.R") # read the metadata
new.y <- dget("y.R")
#DUMP ---- difference with dput-- dump can be used in multiple r objects
x <-  "foo"
y <- data.frame(a=1, b=1)
dump(c("x","y"), file = "data.R")
rm(x,y) #remove objects
source("data.R") # read the metadata



