#' Refresh ufc data with the latest fights
#' @description
#' Retrieve the latest ufc_stats data.frame from GitHub. This function will also automatically overwrite the current rda contained in the package.
#' @export
#' @return The latest version of ufc_stats data.frame.

refresh_data <- function() {
  ufc_data <- url("https://raw.github.com/mtoto/ufc.stats/master/data/ufc_stats.rda")
  load(ufc_data)
  save(ufc_stats, file="data/ufc_stats.rda")
  data("ufc_stats")
}
