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
library (dplyr)

# Read data --------------------------------------------------------------------
## Read data from excel sheet into 4 separate data frames
##(household_survey_data, containment_data, ghg_data,phys_chem_parameter_data)

household_survey_data <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                                    sheet = 1)
containment_data <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                               sheet = 2)
ghg_data <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                       sheet = 3)
phys_chem_parameter_data <- read_excel(here("data-raw", "rawdata_edited.xlsx"),
                                       sheet = 4)


# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here
### Change data types
# Get the class (data type) of each column
sapply(containment_data, class)
sapply(ghg_data, class)
sapply(household_survey_data, class)
sapply(phys_chem_parameter_data, class)

# Convert all character columns to factors, and fix colums that should be
##read in as numeric
containment_data <- containment_data %>% mutate_if(is.character, as.factor)
ghg_data <- ghg_data %>% mutate_if(is.character, as.factor)
household_survey_data <- household_survey_data %>% mutate_if(is.character,
                                                             as.factor)
phys_chem_parameter_data$TOC <- as.numeric(phys_chem_parameter_data$TOC)
phys_chem_parameter_data <- phys_chem_parameter_data %>% mutate_if(is.character,
                                                                   as.factor)

# View the structure of the dataframe to verify changes
str(containment_data)
str(ghg_data)
str(household_survey_data)
str(phys_chem_parameter_data)

### Missing Values

# Export Data ------------------------------------------------------------------
## Save data within package data directory
usethis::use_data(household_survey_data, containment_data,
                  ghg_data, phys_chem_parameter_data, overwrite = TRUE)

## Create the directory if it doesn't exist
fs::dir_create(here::here("inst", "extdata"))

## Create a new workbook
wb <- createWorkbook()

## Add dataframes to separate sheets
addWorksheet(wb, "Household Survey Data")
writeData(wb, "Household Survey Data", household_survey_data)
addWorksheet(wb, "Containment Data")
writeData(wb, "Containment Data", containment_data)
addWorksheet(wb, "GHG Data")
writeData(wb, "GHG Data", ghg_data)
addWorksheet(wb, "Phys Chem Parameter Data")
writeData(wb, "Phys Chem Parameter Data", phys_chem_parameter_data)

## Save the workbook to the specified directory
saveWorkbook(wb, here::here("inst", "extdata", "fecalcanuga.xlsx"),
             overwrite = TRUE)


