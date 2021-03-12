#' Refresh UFC data with the latest fights
#' @description
#' This function updates the rda file contained in the package folder data/ufc_stats.rda.
#' @examples
#' refresh_data()
#' # now what we load into memory is the latest dataset
#' data("ufc_stats)
#' @export


refresh_data <- function() {
  load(url("https://s3-us-west-1.amazonaws.com/ufc.stats/final/ufc_stats.rda"))
  usethis::use_data(ufc_stats, overwrite=TRUE)
}
