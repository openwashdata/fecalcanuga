# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "openxlsx"))
install.packages("readxl")
library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)
library(readxl)

# Read data --------------------------------------------------------------------
# data_in <- read_csv("data-raw/dataset.csv")
# codebook <- read_excel("data-raw/codebook.xlsx") |>
#  clean_names()

survey <- read_excel(here("data-raw", "rawdata_edited.xlsx"), sheet = 1)
volaser <- read_excel(here("data-raw", "rawdata_edited.xlsx"), sheet = 2)
gas <- read_excel(here("data-raw", "rawdata_edited.xlsx"), sheet = 3)
parameters <- read_excel(here("data-raw", "rawdata_edited.xlsx"), sheet = 4)


# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here


# Export Data ------------------------------------------------------------------
usethis::use_data(fecalcanuga, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))#readr::write_csv(fecalcanuga,
                 here::here("inst", "extdata", paste0("fecalcanuga", ".csv")))
openxlsx::write.xlsx(fecalcanuga,
                     here::here("inst", "extdata", paste0("fecalcanuga", ".xlsx")))

