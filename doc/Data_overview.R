## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(AssignmentB2)

## -----------------------------------------------------------------------------
Data_overview(mtcars, cyl, mpg)

## -----------------------------------------------------------------------------
Data_overview(palmerpenguins::penguins, island, bill_length_mm)


