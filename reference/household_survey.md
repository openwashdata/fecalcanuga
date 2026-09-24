# household_survey: Demographic, Environmental and Technical Household / Institutional Data for each Non-Sewered Sanitation Containment

This data set contains the collected household / institutional survey
data for each location where a non-sewered sanitation containment was
sampled. This includes demographic information, operational and
maintenance information and some technical and environmental parameters.

## Usage

``` r
household_survey
```

## Format

A tibble with 41 rows and 39 variables

- sample_id:

  unique identifier for each sampling location in the format
  \##-Location-ddmmyyyy

- location_id:

  unique location identifier for each sampling day in the format of
  (#)-day of sampling (a) - location in that day

- date:

  date of sampling

- local_area_name:

  community / area name that locals commonly use where samples were
  taken

- establishment_type:

  type of establishment where sampling occurred (household, commercial,
  school, office building, other)

- users:

  average number of users for the sanitation system that was sampled

- last_emptied:

  in years how long ago from sampling date the containment was last
  emptied

- shared_toilet:

  Is the toilet(s) connected to the sanitation containment shared or
  not?

- rent_or_own:

  Is the establishment where the containment is rented or owned by the
  head of household?

- containment:

  The type of containment (septic tank, pit latrine, treatment plant
  unit, etc.)

- lining:

  The type of containment lining (fully lined, unlined, don't know)

- lining_material:

  The material the lining is made of if it is lined (fiberglass,
  concreate, PVC, unlined, etc.)

- change_in_liquid_level:

  Is there a change in liquid level due to seasonal variation?

- baffles:

  Are there baffles in the containment?

- outflow:

  Is there an outflow for the containment?

- outflow_location:

  If there is an outflow, where is it located (i.e., leech field)

- toilet_type:

  What is the type of toilet connected to the sanitation system (cistern
  flush, pour-flush, etc.)

- anal_cleansing_material:

  What type of material is used for anal cleansing (water, paper, both)

- paper:

  Is paper used for anal cleansing?

- water:

  Is water used for anal cleansing?

- additives:

  Are there additives added to the containment?

- frequency:

  If additives are added, in what frequency?

- chemicals:

  What chemicals are added to the sanitation system?

- wastewater_type:

  What are the types of wastewater that the containment collects
  (toilet, kitchen, laundry, bathing)

- toilet:

  Does the containment collect toilet type of wastewater?

- bathing:

  Does the containment collect bathing type of wastewater?

- laundry:

  Does the containment collect laundry type of wastewater?

- kitchen:

  Does the containment collect kitchen type of wastewater?

- water_connection:

  Is there a water connection?

- tap_inside_building:

  Does the establishment have this type of water connection (Yes = 1 \|
  No = 0)

- standpipe:

  Does the establishment have this type of water connection (Yes = 1 \|
  No = 0)

- containment_age:

  What is the age (in years) of the containment system?

- containment_constructed:

  Who constructed the containment system (Technician, professional
  engineering, myself, don't know)?

- containment_volume:

  What (in m^3) is the total volume of the containment?

- fully_emptied:

  When the system was last emptied was it emptied fully?

- emptying_interval:

  What is the average / typical emptying interval (in years) of the
  containment?

- rainy_season:

  Is it currently the rainy season?

- solid_waste:

  Does the containment contain solid waste (i.e., garbage)

- type:

  If there is solid waste, what type is it?
