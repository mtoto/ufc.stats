
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
#> [90m# A tibble: 6 x 2[39m
#>   fighter            total_significant_strikes
#>   [3m[90m<chr>[39m[23m                                  [3m[90m<int>[39m[23m
#> [90m1[39m Max Holloway                            [4m2[24m071
#> [90m2[39m Frankie Edgar                           [4m1[24m568
#> [90m3[39m Michael Bisping                         [4m1[24m567
#> [90m4[39m Donald Cerrone                          [4m1[24m535
#> [90m5[39m Joanna Jedrzejczyk                      [4m1[24m525
#> [90m6[39m Rafael Dos Anjos                        [4m1[24m387
```
