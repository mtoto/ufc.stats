#' Refresh UFC data with the latest fights
#' @description
#' This function updates the rda file contained in the package folder data/ufc_stats.rda.
#' @export
#' @return The latest version of ufc_stats data.frame.
#' @examples
#' refresh_data()
#' # now what we load into memory is the latest dataset
#' data("ufc_stats)

refresh_data <- function() {
  load(url("https://s3-us-west-1.amazonaws.com/ufc.stats/final/ufc_stats.rda"))
  save(ufc_stats, file="data/ufc_stats.rda")
}


