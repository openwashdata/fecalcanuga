# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "openxlsx","readxl",
##"dplyr"))

library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)
library(readxl)
library(dplyr)

# Read data --------------------------------------------------------------------
## Read data from excel sheet into 4 separate data frames
##(household_survey_data, containment_data, ghg_data,phys_chem_parameter_data)

household_survey <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                                    sheet = 1)
containment <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                               sheet = 2)
ghg <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                       sheet = 3)
phys_chem_parameter <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                                       sheet = 4)


# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here
### Change data types
# Get the class (data type) of each column
sapply(containment, class)
sapply(ghg, class)
sapply(household_survey, class)
sapply(phys_chem_parameter, class)

# Convert all character columns to factors, and fix colums that should be
##read in as numeric
household_survey <- household_survey %>%
  mutate(across(c(shared_toilet, change_in_liquid_level,
                  baffles, outflow, additives, fully_emptied,
                  rainy_season, solid_waste, water_connection),
                ~ case_match(., "Yes" ~ TRUE, "No" ~ FALSE, .default = NA))) |>
  mutate_if(is.character, as.factor) |>
  mutate(across(c(sample_id, location_id), as.character)) |>
  mutate(across(c(paper, water, toilet,
                  bathing, laundry, kitchen), as.logical))

phys_chem_parameter$TOC <- as.numeric(phys_chem_parameter$TOC)
phys_chem_parameter <- phys_chem_parameter %>% mutate_if(is.character,
                                                                   as.factor)

# View the structure of the dataframe to verify changes
str(containment)
str(ghg)
str(household_survey)
str(phys_chem_parameter)

# Export Data ------------------------------------------------------------------
## Save data within package data directory
use_data(household_survey, overwrite = TRUE)
use_data(containment, overwrite = TRUE)
use_data(ghg, overwrite = TRUE)
use_data(phys_chem_parameter, overwrite = TRUE)

## Create the directory if it doesn't exist
fs::dir_create(here::here("inst", "extdata"))

## Create a new workbook
wb <- createWorkbook()

## Add dataframes to separate sheets
addWorksheet(wb, "Household Survey Data")
writeData(wb, "Household Survey Data", household_survey)
addWorksheet(wb, "Containment Data")
writeData(wb, "Containment Data", containment)
addWorksheet(wb, "GHG Data")
writeData(wb, "GHG Data", ghg)
addWorksheet(wb, "Phys Chem Parameter Data")
writeData(wb, "Phys Chem Parameter Data", phys_chem_parameter)

## Save the workbook to the specified directory
saveWorkbook(wb, here::here("inst", "extdata", "fecalcanuga.xlsx"),
             overwrite = TRUE)


