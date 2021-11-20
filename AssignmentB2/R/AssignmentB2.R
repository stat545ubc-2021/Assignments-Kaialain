#' @title Group & Summarize
#'
#' @description This function will group your data by a specified variable (x), and create three columns:
#' Max_Minus_Min (The maximum-minimum value of the numerical variable y), Mean of y, and the Standard deviation of y.
#' Note that this second variable (y) MUST be a numerical variable for this function to work, as the range (max - min), mean, and standard deviation of categorical variables cannot be calculated.
#'
#' @params data The data that you will be using for this function.
#' @params x The variable in which you will be grouping the data by.
#' @params y The numerical variable of interest. This variable MUST be a numerical variable for this function to work.
#' @return This function will return descriptive characteristics of the numerical variable (y), where the range (max - min), mean, and the standard deviation will be calculated.
#'
#'
#' @examples
#' Data_overview(palmerpenguins::penguins, island, flipper_length_mm)
#' Data_overview(iris, Species, Sepal.Length)
#' @export
Data_overview <- function(data, x, y, na.rm = TRUE) {
  check <- dplyr::summarise(data, is.numeric({{ y }}))
  if (!check[[1]]) {
    stop("Oops! You must enter a numerical variable for your variable (y) for this function to work")
  }
  data %>%
    dplyr::group_by({{ x }}) %>%
    dplyr::summarise(Max_Minus_Min = (max({{ y }}) - min({{ y }})),
                     Mean = mean({{ y }}),
                     Stdev = sd({{ y }}))
}

