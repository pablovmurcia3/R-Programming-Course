outcome1 <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

outcome1[, 11] <- as.numeric(outcome1[, 11])
outcome1[, 17] <- as.numeric(outcome1[, 17])
outcome1[, 23] <- as.numeric(outcome1[, 23])


# 1

hist(outcome[, 11])

#  create data base

TX1 <-outcome1[outcome1$State=="TX",]# condition else
TX2 <- TX[complete.cases(TX1[,17]), ]



# If heart attack (11)


MD1 <- MD[MD[,23] == min(MD[,23], na.rm = TRUE), 2 ]
sort(MD1)[1]

AL1[AL1[,17] == min(AL1[,17], na.rm = TRUE), 2]



x <- c(1,1,1,3)
y <- c("b","c","a","d")
z <- data.frame(x,y)
z$y <- as.character(z$y)
z1 <- z[z[,1] == min(z[,1]), 2] 
z1
sort(z1)[1]

best <- function(state,outcome) {
  
        outcome1 <- read.csv("outcome-of-care-measures.csv", na.strings = 
                               "Not Available", stringsAsFactors = FALSE)
  
        if (state %in% outcome1[,7]) {
                  
                df <-outcome1[outcome1[,7] == state,] 

        } else { 
                
                stop("invalid state")
          
        }
       
        if (outcome == "heart attack") {
          
                dfcc <- df[complete.cases(df[,11]),]
                minha <- dfcc[dfcc[,11] == min(dfcc[,11], na.rm = TRUE), 2]
                sort(minha)[1]
          
        } else if (outcome == "heart failure") {
         
                dfcc <- df[complete.cases(df[,17]),]
                minhf <- dfcc[dfcc[,17] == min(dfcc[,17], na.rm = TRUE), 2]
                sort(minhf)[1]

                
        } else if  (outcome == "pneumonia") {
          
                dfcc <- df[complete.cases(df[,23]),]
                minp <- dfcc[dfcc[,23] == min(dfcc[,23], na.rm = TRUE), 2]
                sort(minp)[1]
          
        } else {
          
                stop( "invalid outcome")
        }
        
  
}

best("TX", "heart attack")

best("TX", "heart failure")

best("MD", "heart attack")

best("MD", "pneumonia")

best("BB", "heart attack")

best("NY", "hert attack")

# 2

# 

# sorting
TX1 <-outcome1[outcome1$State=="TX",]
TX2 <- TX1[complete.cases(TX1[,23]), ]
OTX <- TX2[order(TX2[,23], TX2[,2]), ]


# taking names 

names <- OTX[,2]
names

rankhospital <- function(state,outcome, num = "best") {
  
        outcome1 <- read.csv("outcome-of-care-measures.csv", na.strings = 
                              "Not Available", stringsAsFactors = FALSE)
        
        if (state %in% outcome1[,7]) {
          
                  df <-outcome1[outcome1[,7] == state,] 
          
        } else { 
          
                  stop("invalid state")
          
        } 
        
        
        if (outcome == "heart attack") {
          
                dfcc <- df[complete.cases(df[,11]),]
                odfcc <- dfcc[order(dfcc[,11], dfcc[,2]), ]
                hnames <- odfcc[,2]

                if (is.numeric(num)){
                  
                          hnames[num]
                  
                } else if (num == "worst") {
                  
                          tail(hnames, n=1)
                  
                }  else if (num == "best") {
                  
                          hnames[1]
                  
                }
                
        
        } else if (outcome == "heart failure") {
          
                dfcc <- df[complete.cases(df[,17]),]
                odfcc <- dfcc[order(dfcc[,17], dfcc[,2]), ]
                hnames <- odfcc[,2]
                
                if (is.numeric(num)){
                  
                        hnames[num]
                  
                } else if (num == "worst") {
                  
                        tail(hnames, n=1)
                  
                } else if (num == "best") {
                  
                        hnames[1]
                   
                }
                
         
        } else if  (outcome == "pneumonia") {
          
               dfcc <- df[complete.cases(df[,23]),]
               odfcc <- dfcc[order(dfcc[,23], dfcc[,2]), ]
               hnames <- odfcc[,2]
               
               if (is.numeric(num)){
                 
                      hnames[num]
                 
               } else if (num == "worst") {
                 
                      tail(hnames, n=1)
                 
               }  else if (num == "best") {
                 
                      hnames[1]
                 
               }
          
        } else {
          
          stop("invalid outcome")
        }
        
}
  

rankhospital("MD","heart attack", "worst")
rankhospital("TX","heart failure", 4)
rankhospital("MD","heart attack", 5000)
rankhospital("TX","pneumonia",302)


