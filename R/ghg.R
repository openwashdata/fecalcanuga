#' ghg: Greenhouse Gas Mass Flux Rates for each Non-Sewered Sanitation Containment
#'
#' This data set contains the calculated mass flux rates from the measured point-source in situ GHG measurments and the observed person equivalents for each containment for the three key greenhouse gases (CH4, CO2 and N2O).
#'
#' @format A tibble with 41 rows and 7 variables
#' \describe{
#'   \item{sample_id}{unique identifier for each sampling location in the format ##-Location-ddmmyyyy}
#'   \item{location_id}{unique location identifier for each sampling day in the format of (#)-day of sampling (a) - location in that day}
#'   \item{date}{date of sampling}
#'   \item{users}{average number of users for the sanitation system that was sampled}
#'   \item{flux_ch4}{methane flux in grams/capita-day - based on number of users}
#'   \item{flux_co2}{carbon dioxide flux in gram/capita-day - based on number of users}
#'   \item{flux_n20}{nitrious oxide flux in gram/capita-day - based on number of users}
#' }
"ghg"
