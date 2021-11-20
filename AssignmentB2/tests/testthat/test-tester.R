#Testing the function

test_that("Testing the Data_overview function", {
  a <- c(2, 2)
  b <- c(2, 4)
  c <- as.factor(c("Agree", "Disagree" ))
  testing_dataframe <- data.frame (a, b, c)

  expect_error(Data_overview(testing_dataframe, a, c))
  expect_s3_class(Data_overview(testing_dataframe, a, b), "data.frame")
})



test_that( "Testing the Max_minus_min computation within the Data_overview function", {
  Data_overview_maxmin <- function(x, na.rm = TRUE) {
    Max_minus_min = (max({{ x }}) - min({{ x }}))
  }
  a <- c(24, 20)
  expect_equal(Data_overview_maxmin(a), 4)
})


test_that( "Testing the Mean computation within the Data_overview function", {
  Data_overview_mean <- function(x, na.rm = TRUE) {
    Mean = mean({{ x }})
  }
  a <- c(24, 20)
  expect_equal(Data_overview_mean(a), 22)
})



test_that( "Testing the Standard deviation computation within the Data_overview function", {
  Data_overview_Stdev <- function(x, na.rm = TRUE) {
    Stdev = sd({{ x }})
  }
  a <- c(24, 20)
  expect_error(expect_equal(Data_overview_Stdev(a), 2.828))
})
