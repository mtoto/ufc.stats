
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ufc.stats

<!-- badges: start -->

<!-- badges: end -->

This package contains UFC fight statistics, continously updated with
data from latest fights.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mtoto/ufc.stats")
```

## Example usage

Who has the most significant strikes landed in UFC history?

``` r
library(ufc.stats)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

data("ufc_stats")
ufc_stats %>% group_by(Fighter) %>%
  summarise(total_strikes = sum(Significant_strikes_landed)) %>%
  arrange(-total_strikes) %>%
  head()
#> # A tibble: 6 x 2
#>   Fighter            total_strikes
#>   <chr>                      <int>
#> 1 Max Holloway                1937
#> 2 Frankie Edgar               1654
#> 3 Michael Bisping             1567
#> 4 Donald Cerrone              1535
#> 5 Joanna Jedrzejczyk          1525
#> 6 Jon Jones                   1454
```
