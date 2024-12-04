

library(tidyverse)

# install tabulizer package with: 
# remotes::install_github(c("ropensci/tabulizerjars", "ropensci/tabulizer"), INSTALL_opts = "--no-multiarch")
# source: https://stackoverflow.com/a/70364965

library(tabulapdf)

# read data ---------------------------------------------------------------

# data from: https://www.zh.ch/content/dam/zhweb/bilder-dokumente/organisation/finanzdirektion/personalamt/personal--und-lohnstatistik/Personal_Lohnstatistik_2015_A4.pdf


file <- here::here("data/raw/Personal_Lohnstatistik_2015_A4.pdf")


tabulapdf::locate_areas(file = file, 
                        pages = 3)

extract_tables(file = file,
               pages = 3,
               area = list(c( 95.83065, 335.26040, 565.75577, 546.79769)),
               guess = FALSE) 


