#'Fuzzify the fluctuation time series
#'
#'Creates the S(t) vector,
#'Assigns to each fluctuation its fuzzified value,
#'Adds S(t) to the data table,
#'Creates the S(t) bar vector,
#'Adds S(t) bar to the data table.
#' @param  data A data frame with columns: Date, AdjClose and Fluctuation
#'
#' @return  A data frame containing the fuzzified data
#' @export
#'
#' @examples
data_fuzzification <- function(data){
  
  #create the S(t) vector
  S_t <- rep(0, 251)
  
  #Assign to each fluctuation its fuzzified value
  for(i in  2:251){
    if (data$Fluctuation[i] < -1*(len/2)){
      S_t[i] <- 1
    }
    
    else if (data$Fluctuation[i] < 1*(len/2) &  -1*(len/2) <= data$Fluctuation[i]){
      S_t[i] <- 2
    }
    else if (data$Fluctuation[i] >= 1*(len/2)){
      S_t[i] <- 3
    }
    
  }
  
  #Adding S(t) to the data table
  data <- data %>% 
    mutate(
      fuzzification = S_t
    )
  

  
  #creating the S(t) bar vector
  S_t_bar <- rep(0, 251)
  
  for(i in 2:250){
    S_t_bar[i] <-( data$Fluctuation[i]/len) + 2
  }

  
  #Adding S(t) bar to the data table
  data <- data %>% 
    mutate(
      St_bar = S_t_bar
    )
  
  data
}