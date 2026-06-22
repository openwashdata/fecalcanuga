# ghg: Greenhouse Gas Mass Flux Rates for each Non-Sewered Sanitation Containment

This data set contains the calculated mass flux rates from the measured
point-source in situ GHG measurments and the observed person equivalents
for each containment for the three key greenhouse gases (CH4, CO2 and
N2O).

## Usage

``` r
ghg
```

## Format

A tibble with 41 rows and 7 variables

- sample_id:

  unique identifier for each sampling location in the format
  \##-Location-ddmmyyyy

- location_id:

  unique location identifier for each sampling day in the format of
  (#)-day of sampling (a) - location in that day

- date:

  date of sampling

- users:

  average number of users for the sanitation system that was sampled

- flux_ch4:

  methane flux in grams/capita-day - based on number of users

- flux_co2:

  carbon dioxide flux in gram/capita-day - based on number of users

- flux_n2o:

  nitrous oxide flux in gram/capita-day - based on number of users
