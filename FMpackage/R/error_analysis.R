#' Error parameters 
#'
#'Finding the MSE (mean squared error), RMSE (root of the mean squared error), MAE (mean absolute error) and MPE (mean percentage error) for the results of the model 
#'
#' @param data a data frame containing the actual adjusted close price and the predicted adjusted close price
#'
#' @return
#' @export
#'
#' @examples
error_analysis <- function(data){
  n = nrow(data)
  #Finding the MSE (mean squared error)
  mse <- 0
  for(i in 1:n){
    mse <- mse +  (sum(data$predicted_AdjClose[i], -1*data$actual_AdjClose[i]))^2
  }
  mse <- mse/n
  
  #finding the RMSE (root of the mean squared error)
  rmse <- sqrt(mse)
  
  #finding the MAE (mean absolute error)
  mae <- 0
  for(i in 1:n){
    mae <- mae +  abs((sum(data$predicted_AdjClose[i], -1*data$actual_AdjClose[i])))
  }
  mae <- mae/n
  
    #finding the MPE (mean percentage error)
  mpe <- 0
  for(i in 1:n){
    mpe <- mpe +  abs((sum(data$predicted_AdjClose[i], -1*data$actual_AdjClose[i])))/data$actual_AdjClose[i]
  }
  mpe <- mpe/n
  errors <- c(mse,rmse,mae,mpe)
  print(paste0("The mean squared error for this dataset is: ", errors[1]))
  print(paste0("The root of the mean squared error for this dataset is: ", errors[2]))
  print(paste0("The mean absolute error for this dataset is: ", errors[3]))
  print(paste0("The mean percentage error for this dataset is: ", errors[4]))
}


