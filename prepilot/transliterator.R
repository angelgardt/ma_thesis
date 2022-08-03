library(tidyverse)

iss <- read_csv("international_scholarly_system.csv")

stimuli_random2 <- read_csv("stimuli - random2.csv")

View(iss)

str_length(stimuli_random2$orthographic_cyr)

sr <- stimuli_random2$orthographic_cyr

for (i in 1:length(iss$cyr)) {
  str_replace_all(sr, iss$cyr[i], iss$lat[i]) -> sr
}
sr %>% View

s <- "э́ко"

for (i in 1:length(iss$cyr)) {
  str_replace(s, iss$cyr[i], iss$lat[i]) -> s
}
s
