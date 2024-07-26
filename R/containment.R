#' containment: Technical Data for each Non-Sewered Sanitation Containment
#'
#' This data set contains the technical data (containment size, volume, fecal sludge depth, etc.) for each non-sewered sanitation system containment that was sampled as a part of this field work.
#'
#' @format A tibble with 41 rows and 10 variables
#' \describe{
#'   \item{sample_id}{unique identifier for each sampling location in the format ##-Location-ddmmyyyy}
#'   \item{location_id}{unique location identifier for each sampling day in the format of (#)-day of sampling (a) - location in that day}
#'   \item{date}{date of sampling}
#'   \item{area}{surface area of liquid surface in containment m^2}
#'   \item{sludge_depth}{depth in meters, of where from the top of the sludge the sample was taken}
#'   \item{containment_depth}{depth in meters, from the top of the containment to the bottom of the containment}
#'   \item{containment_volume}{total volume of the containment in m^3}
#'   \item{fs_volume}{total volume of the sludge in containment in m^3}
#'   \item{accumulation_rate}{the accumulation rate in litres/capita -year (based on total volume and number of users)}
#'   \item{scum_depth}{the depth of the top scum layer in centimeters}
#' }
"containment"
