#' Fuzzy Fluctuation Logical Relationship
#'
#'Creates an FFLR matrix.
#'Populates the matrix, each row is an FFLR, with the last column being the Q(t)_bar value of the FFLR.
#'Expands the FFLR matrix with (N+1) rows of zeros to match the size of data frame.
#'Creates a data frame with only the FFLR relationships.
#'
#' @param data a fuzzified dataset in a dataframe 
#' @param N order of the Fuzzy Fluctuation Logical Relationship
#' @param M Scaling parameter
#'
#' @return  A dataframe with only the FFLR
#' @export
#'
#' @examples
data_fflr <- function(data,N,M){
  #Creating FFLR matrix
  
  nrows <- nrow(data) - N - 1
  nrows
  fflr <- zeros(nrows,N+1)
  
  ###############################################################
  
  #Populating the matrix, each row is an FFLR, with the last column being the Q(t)_bar value of the FFLR
  
  for (i in 1:nrows){
    for (j in 1:N){
      k = (N+1) - j
      fflr[i,k] <- data$fuzzification[i+j]
      
    }
  }
  
  for(i in 1: nrows){
    fflr[i,(N+1)] <- data$St_bar[(N+1)+i]/M
    
  }
  
  ###############################################################
  
  #expanding the FFLR matrix with (N+1) rows of zeros to match the size of data frame
  filler <- zeros((N+1),(N+1))
  
  fflr <- rbind2(filler, fflr)
  
  as.data.frame(fflr)
  
}
