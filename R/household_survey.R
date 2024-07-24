#' household_survey: Demographic, Environmental and Technical Household / Institutional Data for each Non-Sewered Sanitation Containment
#'
#' This data set contains the collected household / institutional survey data for each location where a non-sewered sanitation containmenet was sampled. This includes demographic infromation, operational and maintenance information and some technical and environmental parameters.
#'
#' @format A tibble with 41 rows and 41 variables
#' \describe{
#'   \item{sample_id}{unique identifier for each sampling location in the format ##-Location-ddmmyyyy}
#'   \item{location_id}{unique location identifier for each sampling day in the format of (#)-day of sampling (a) - location in that day}
#'   \item{date}{date of sampling }
#'   \item{local_area_name}{community / area name that locals commonly use where samples were taken }
#'   \item{establishment_type}{type of establishment where sampling occurred (household, commercial, school, office building, other)}
#'   \item{users}{average number of users for the sanitation system that was sampled}
#'   \item{last_emptied}{in years how long ago from sampling date the containment was last emptied }
#'   \item{shared_toilet}{Is the toilet(s) connected to the sanitation containment shared or not (Yes/No)}
#'   \item{rent_or_own}{Is the establishment where the containment is rented or owned by the head of household?}
#'   \item{containment}{The type of containment (septic tank, pit latrine, treatment plant unit, etc.)}
#'   \item{lining}{The type of containment lining (fully lined, unlined, don't know)}
#'   \item{lining_material}{The material the lining is made of if it is lined (fiberglass, concreate, PVC, unlined, etc.)}
#'   \item{change_in_liquid_level}{Is there a change in liquid level due to seasonal variation (Y/N)}
#'   \item{baffles}{Are there baffles in the containment (Y/N/I don't know)}
#'   \item{outflow}{Is there an outflow for the containment (Y/N/I don't know)}
#'   \item{outflow_location}{If there is an outflow, where is it located (i.e., leech field)}
#'   \item{toilet_type}{What is the type of toilet connected to the sanitation system (cistern flush, pour-flush, etc.)}
#'   \item{anal_cleansing_material}{What type of material is used for anal cleansing (water, paper, both)}
#'   \item{paper}{Is paper used for anal cleansing (Yes = 1 | No = 0)}
#'   \item{water}{Is water used for anal cleansing (Yes = 1 | No = 0)}
#'   \item{additives}{Are there additives added to the containment (Y/N/I don't know)}
#'   \item{frequency}{If additives are added, in what frequency?}
#'   \item{chemicals}{What chemicals are added to the sanitation system?}
#'   \item{wastewater_type}{What are the types of wastewater that the containment collects (toilet, kitchen, laundry, bathing)}
#'   \item{toilet}{Does the containment collect this type of wastewater (Yes = 1 | No = 0)}
#'   \item{bathing}{Does the containment collect this type of wastewater (Yes = 1 | No = 0)}
#'   \item{laundry}{Does the containment collect this type of wastewater (Yes = 1 | No = 0)}
#'   \item{kitchen}{Does the containment collect this type of wastewater (Yes = 1 | No = 0)}
#'   \item{water_connection}{What type of water connection does the establishment where sampling is occurring have (tap inside building, standpipe, other)?}
#'   \item{where}{Does the establishment have this type of water connection (Yes = 1 | No = 0)}
#'   \item{tap_inside_building}{Does the establishment have this type of water connection (Yes = 1 | No = 0)}
#'   \item{standpipe}{Does the establishment have this type of water connection (Yes = 1 | No = 0)}
#'   \item{containment_age}{What is the age (in years) of the containment system?}
#'   \item{containment_constructed}{Who constructed the containment system (Technician, professional engineering, myself, don't know)?}
#'   \item{containment_volume}{What (in m^3) is the total volume of the containment?}
#'   \item{fully_emptied}{When the system was last emptied was it emptied fully? (Y/N/I don't know)}
#'   \item{emptying_interval}{What is the average / typical emptying interval (in years) of the containment? }
#'   \item{rainy_season}{Is it currently the rainy season? (Y/N)}
#'   \item{solid_waste}{Does the containment contain solid waste (i.e., garbage) (Y/N)}
#'   \item{type}{If there is solid waste, what type is it? }
#'   \item{notes}{Any additional important notings / observations }
#' }
"household_survey"
