# phys_chem_parameter: Physio-Chemical Parameter Data for each Non-sewered Sanitation Containment

This data set contains the measured in situ and analyzed in laboratory
physical, chemical and biological parameters pertaining to each
containment sampled as well as at different vertical locations in each
containment (i.e., Top of containment, middle and bottom).

## Usage

``` r
phys_chem_parameter
```

## Format

A tibble with 119 rows and 29 variables

- sample_id:

  unique identifier for each sampling location in the format
  \##-Location-ddmmyyyy

- location_id:

  unique location identifier for each sampling day in the format of
  (#)-day of sampling (a) - location in that day

- date:

  date of sampling

- depth_id:

  unique identifier for each sample indicating the location in the
  containment (T = top, M = middle, B = bottom)

- sludge_depth:

  depth in meters, of where from the top of the sludge the sample was
  taken

- temperature:

  Temperature of the sludge at the insitu sampling location (in degrees
  Celsius)

- DO:

  dissolved oxygen concentration in mg/L at the insitu sampling location

- pH:

  pH value at the insitu sampling location

- ORP:

  oxidation reduction potential, measured in millivolts, at the insitu
  sampling locations

- EC:

  electrical conductivity, measured in microSiemens, at the insitu
  sampling locations

- COD:

  Chemical oxygen demand, mg/L

- soluble_COD:

  Soluble chemical oxygen demand, mg/L

- sulphide:

  Sulphide, mg/L

- total_nitrogen:

  Total Nitrogen, mg/L

- nitrite:

  Nitrite, mg/L

- nitrate:

  Nitrate, mg/L

- ammonia:

  Ammonia, mg/L

- TKN:

  Total Kjeldahl Nitrogen, mg/L

- ortho_phosphorous:

  Ortho Phosphorous, mg/L

- total_phosphorous:

  Total Phosphorous, mg/L

- BOD:

  Biochemical oxygen demand, mg/L

- TOC:

  Total organic carbon, mg/L

- ts:

  Total solids, g/L

- vs:

  Volatile Solids, g/L

- vs_percent:

  Volatile Solids, % total solids

- sand_content:

  Sand content, g/L

- tss:

  Total suspended solids, g/L

- vss:

  Volatile suspended solids, g/L

- vss_tss:

  VSS/TSS (ratio)
