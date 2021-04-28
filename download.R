library(dplyr)
library(readr)

tests_data <- readr::read_csv(
  "https://raw.githubusercontent.com/dsbbfinddx/FINDCov19TrackerData/master/processed/coronavirus_tests.csv")

today <- format(Sys.time(), "%Y-%m-%d")
tests_data_today <- tests_data %>%
  filter(date == today)

tests_corrected_today <- tests_data %>%
  filter(date == today) %>%
  select(pcr_tests_cum_corrected, rapid_test_cum_corrected)

#readr::write_csv(tests_data_today, paste0("data/tests_",today,".csv"))
readr::write_csv(tests_corrected_today, "data/tests_today.csv")

                 
