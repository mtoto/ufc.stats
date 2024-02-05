
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
#> # A tibble: 6 × 2
#>   fighter            total_significant_strikes
#>   <chr>                                  <int>
#> 1 Max Holloway                            3197
#> 2 Angela Hill                             1896
#> 3 Frankie Edgar                           1801
#> 4 Rafael Dos Anjos                        1782
#> 5 Joanna Jedrzejczyk                      1754
#> 6 Donald Cerrone                          1748
```

## Updating with latest fights

The package contains a single function `refresh_data()` that updates the
dataset contained within the package. Running `data("ufc_stats")`
subsequently, the latest version of the data.frame is loaded into
memory.
