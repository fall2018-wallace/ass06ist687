
clean_data <- raw_data
readStates <- function(states)
{
    # remove rows that not needed
    # -- first row is the total for the US, we do not need that
    states <- states[-1,]
    # -- last row is Puerto Rico, it's not a state 
    num.row <- nrow(states)
    states <- states[-num,row,]
    
    # remove the first 4 columns
    states <- states[,-1:-4]
    
    colnames(states) <- c("stateName","population","popOver18","percentOver18")
    
    # return the results 
    return(states)
}

cleanCensus <- readstates(raw_data)
str(cleanCensus)
