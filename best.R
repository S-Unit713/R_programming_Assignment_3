best <- function(state, outcome){
        out_measure <- read.csv("outcome-of-care-measures.csv", colClasses="character")
        st<- unique(out_measure[,7])
        state.inv<- NULL
        out.inv <- NULL
        for(i in 1:length(st)){
                state.inv<- identical(st[i],state)
                if(state.inv){
                        break
                }
        }
        if(state.inv==FALSE) stop("invalid state")
        prbm<- c("heart attack","pneumonia","heart failure")
        for(i in 1:length(prbm)){
                out.inv <- identical(prbm[i],tolower(outcome))
                if(out.inv){
                        break
                }
        }
        if(out.inv==FALSE) stop("invalid outcome")
        
}