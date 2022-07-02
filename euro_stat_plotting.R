library(tidyverse)
library(eurostat)
library(ggplot2)
library(lubridate)

table_edu <- search_eurostat("education")

table_fin <- search_eurostat("finance")

table_gov <- search_eurostat("government")

table_def <- search_eurostat("deficit")

table_fin %>% glimpse()

table_def$code

table_fin %>% 
  filter(str_detect(code,"urb"))


k <- get_eurostat("gov_10dd_edpt1")

k %>% glimpse()

k %>% cb()


k %>% summary()

k %>%
  ggplot() +
  geom_bar(aes(sex))

print(k)
