source('R/rUtils/dataCapture/apis.R')
library('tidyverse')
library('httr')


test2 <- getData_phlCartoApi("select * from PUBLIC_CASES_FC limit 10")

write.csv(test2,paste0('data/',
                       'Test_2_',
                       format.POSIXct(Sys.time(), "%Y-%m-%d %H_%M_%S"),
                       '_data.csv'))