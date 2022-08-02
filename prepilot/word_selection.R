library(tidyverse)
# save.image("word_selection.RData")
# load("word_selection.Rdata")

lexmin <- read_csv("lexminB2.csv")

set.seed(208)
lexmin %>% 
  mutate(len = str_length(ru)) %>%
  filter(len > 10) %>% 
  slice(., sample(1:nrow(.), 30)) %>% 
  .$ru -> words


