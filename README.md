
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ufc.stats

This package contains UFC fight statistics, continously updated with
data from latest events.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# devtools::install_github("mtoto/ufc.stats")
data("ufc_stats")
```

Each row of `ufc_stats` represents the statistics of one fighter in a
single round of a fight. The `data.frame` contains 37 variables in
total. For full a description of each variable, please refer to the
[Data
Dictionary](http://tamaszilagyi.com/ufc.stats/articles/data-dictionary.html).

## Example usage

Who has the most significant strikes landed in UFC history?

``` r
library(dplyr)

ufc_stats %>% group_by(fighter) %>%
  summarise(total_significant_strikes = sum(significant_strikes_landed)) %>%
  arrange(-total_significant_strikes) %>%
  head()
#> # A tibble: 6 x 2
#>   fighter            total_significant_strikes
#>   <chr>                                  <int>
#> 1 Max Holloway                            2071
#> 2 Frankie Edgar                           1568
#> 3 Michael Bisping                         1567
#> 4 Donald Cerrone                          1535
#> 5 Joanna Jedrzejczyk                      1525
#> 6 Rafael Dos Anjos                        1401
```
