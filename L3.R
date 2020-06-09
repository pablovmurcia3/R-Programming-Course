# OTHER WAY TO READ TABLE 
# CONNECTIONS

#  file: open connection to a standard uncompressed file (read.table)
str(file)
# Gzfile, bzfile : open connections to compressed files (dependes gz or bzip2)
# url, to a webage



#FILE
con <- file ("f.txt"), "r") # r is for reads only
data <- read.csv(con)
close(con)

#the same as
data <- read.csv("f.txt") # SO IS NOT IMPORTANT THE CONNECTION

#SOMETIMES TE CONNECTION IS IMPORTANT   
#reading lines of a text file

con <- gzfile("words.gz") 
x <- readLines(con, 10) 


#reading lines of a text file
con <- url("http://www.jhsph.edu", "r") #url to a non file object
x <- readLines(con)
head(x)





