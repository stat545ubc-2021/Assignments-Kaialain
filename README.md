
<!-- README.md is generated from README.Rmd. Please edit that file -->

# AssignmentB2

<!-- badges: start -->

<!-- badges: end -->

The goal of AssignmentB2 is to showcase a function I created in
STAT545B. The function I created is called, `Data_overview`. This
function will provide basic summary statistics of a given numerical
variable y (Max-Min, Mean, and Standard Deviation), grouped by a
variable x.

## Installation

AssignmentB2 is not yet on CRAN, but you can download it form this
repository using the following R command:

``` r
devtools::install.github("stat545ubc-2021/AssignmentsB2-Kaialain")
```

## Example

This is a basic example which shows you how to solve a common problem.
The following example will showcase the Data\_overview function using
the cars dataset. Using the Data\_overview function, I have retrieved
the mean and standard deviation of distance travelled, grouped by the
speed of the car.

``` r
library(AssignmentB2)

Data_overview(cars, speed, dist)
#> # A tibble: 19 x 4
#>    speed Max_Minus_Min  Mean Stdev
#>    <dbl>         <dbl> <dbl> <dbl>
#>  1     4             8   6    5.66
#>  2     7            18  13   12.7 
#>  3     8             0  16   NA   
#>  4     9             0  10   NA   
#>  5    10            16  26    8   
#>  6    11            11  22.5  7.78
#>  7    12            14  21.5  5.97
#>  8    13            20  35    8.25
#>  9    14            54  50.5 24.3 
#> 10    15            34  33.3 18.1 
#> 11    16             8  36    5.66
#> 12    17            18  40.7  9.02
#> 13    18            42  64.5 19.1 
#> 14    19            32  50   16.4 
#> 15    20            32  50.4 11.9 
#> 16    22             0  66   NA   
#> 17    23             0  54   NA   
#> 18    24            50  93.8 20.5 
#> 19    25             0  85   NA
```

Currently, this is all the `Data_overview` can do. However, future
developments may be added to further enhance the utility of this
function.
