# Changelog

## fecalcanuga 0.1.0

First release of the `fecalcanuga` data package, providing data from 5
months of field work characterizing non-sewered sanitation containments
in Southern Coastal British Columbia, Canada (April - June 2023) and
Kampala, Uganda (January - February 2024).

### Data

- Added the `containment` dataset: technical data (size, volume, fecal
  sludge depth) for each sampled containment (41 observations, 10
  variables).
- Added the `household_survey` dataset: demographic, operational,
  technical, and environmental survey data for each sampled location (41
  observations, 39 variables).
- Added the `phys_chem_parameter` dataset: in-situ and laboratory
  physical, chemical, and biological parameters measured at the top,
  middle, and bottom of each containment (119 observations, 29
  variables).
- Each dataset is also available as a CSV file under `inst/extdata/` and
  bundled in `inst/extdata/fecalcanuga.xlsx`.

### Fixes

- Renamed the greenhouse gas flux variable `flux_n20` to `flux_n2o` to
  correctly denote nitrous oxide (N2O).
- Synced `data-raw/dictionary.csv` with the data by removing two
  variables (`where`, `notes`) that are not present in
  `household_survey`.
- Pointed package URLs (install instructions, CSV download links,
  pkgdown site) to the canonical `openwashdata/fecalcanuga` repository.
- Corrected typos in the package description, citation, dataset
  documentation, and data dictionary, and added the missing 2024 year to
  the Uganda fieldwork dates.
