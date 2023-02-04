#' Refresh UFC data with the latest fights
#' @description
#' This function updates the rda file contained in the package folder data/ufc_stats.rda.
#' @examples
#' refresh_data()
#' # now what we load into memory is the latest dataset
#' data("ufc_stats)
#' @export


refresh_data <- function() {
  ufc_stats<-load(url("https://github.com/mtoto/ufc.stats/blob/master/data/ufc_stats.rda?raw=true"))
  usethis::use_data(ufc_stats, overwrite=TRUE)
}
