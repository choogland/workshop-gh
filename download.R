library(dplyr)
library(readr)

tests_data <- readr::read_csv(
  "https://raw.githubusercontent.com/dsbbfinddx/FINDCov19TrackerData/master/processed/coronavirus_tests.csv")

today <- format(Sys.time(), "%Y-%m-%d")
tests_data_today <- tests_data %>%
  filter(date == today)

#readr::write_csv(tests_data_today, paste0("data/tests_",today,".csv"))
readr::write_csv(tests_data_today, "data/tests_today.csv")

                 