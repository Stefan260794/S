#' \code{testAssign} package
#' Please do not touch anything above the TEST_EX_X Lines!
#'
#' @docType package
#' @name testAssign
#' @import dplyr
#' @import ggplot2
#' @import tidyr
#' @import checkmate
#' @import nycflights13
#' @import forcats
NULL

globVars = c(".", "type", "air_time", "distance", "flights", "manufacturer", "model", "planes", "seats", "tailnum")
if(getRversion() >= "2.15.1")  utils::globalVariables(globVars)



# ----------------------------------------------------------------------------------------
# Turn on/off Tests
# ----------------------------------------------------------------------------------------
# Example:
# In order to enable tests for Exercise 1 set TEST_EX_1 = TRUE

TEST_EX_1 = FALSE
TEST_EX_2 = FALSE
TEST_EX_3 = FALSE
