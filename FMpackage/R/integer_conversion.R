#'Converting Data Frame Columns to Integer type
#'
#' Changing the data type of all but the last column of a dataframe to integer
#'
#' @param data a data frame with numeric columns that are not necessarily integers
#'
#' @return The data frame with all but the last column as integers
#' @export
#'
#' @examples
integer_conversion <- function(data){
  c <- ncol(data)
  for (i in 1:(c-1)){
    data[,i] = as.integer(data[,i])
  }
  data <- data [complete.cases(data),]
  data
}