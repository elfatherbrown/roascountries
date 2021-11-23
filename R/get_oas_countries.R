#' Get OAS countries
#'
#'
#' @return
#' A dataset with one column iso3c
#' @export
#' 
#' @importFrom utils read.csv
#' @importFrom dplyr pull
#' @examples
#' get_oas_countries() %>% dplyr::pull(iso3c)
#' library(tidyverse)
#' get_oas_countries() %>% dplyr::pull(iso3c)
get_oas_countries <- function() {
  datafile <- system.file("oas_countries.csv", package = "roascountries")
  oas_countries <- read.csv(datafile)
  return(oas_countries)
}
