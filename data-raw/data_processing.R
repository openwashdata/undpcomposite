# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "readxl", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(readxl)
library(openxlsx)
library(tidyverse)

# Read data --------------------------------------------------------------------
data_in <- readr::read_csv("data-raw/HDR23-24_Composite_indices_complete_time_series.csv")
# Tidy data --------------------------------------------------------------------
undpcomposite <- data_in %>%
  pivot_longer(
    cols = -c(iso3, country, hdicode, region, hdi_rank_2022),
    names_to = c(".value", "year"),
    names_pattern = "(.+)_(.+)"
  ) %>%
  arrange(iso3, year)


undpcomposite[] <- lapply(undpcomposite,function(x) {
  if (is.character(x)) {
    stringi::stri_enc_toutf8(x)
  } else {
    x
  }
})

check_utf8 <- function(df) {
  invalid_cols <- sapply(df, function(column) {
    if (!is.character(column)) return(FALSE) # Only check character columns
    any(sapply(column, function(x) {
      if (is.na(x)) return(FALSE) # Ignore NA values
      tryCatch({
        iconv(x, from = "UTF-8", to = "UTF-8", sub = "byte") != x
      }, error = function(e) TRUE) # Treat errors as non-UTF-8
    }))
  })

  # Get column names with issues
  bad_cols <- names(df)[invalid_cols]

  if (length(bad_cols) > 0) {
    cat("Non-UTF characters detected in columns:", paste(bad_cols, collapse = ", "), "\n")
  } else {
    cat("No non-UTF characters found.\n")
  }
}
undpcomposite$country <- iconv(undpcomposite$country, from = "UTF-8", to = "UTF-8", sub = "")

# Run check
check_utf8(undpcomposite)
# Export Data ------------------------------------------------------------------
usethis::use_data(undpcomposite, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(undpcomposite,
                 here::here("inst", "extdata", paste0("undpcomposite", ".csv")))
openxlsx::write.xlsx(undpcomposite,
                     here::here("inst", "extdata", paste0("undpcomposite", ".xlsx")))
