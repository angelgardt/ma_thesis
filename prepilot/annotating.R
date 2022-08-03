library(tidyverse)
library(phonfieldwork)

stimuli_random <- read_csv('stimuli - random.csv')

create_subannotation(
  textgrid = 'recs/00AA1.TextGrid',
  tier = 1,
  new_tier_name = "orthographic",
  n_of_annotations = nrow(stimuli_random) * 2
)

annotate_textgrid(
  annotation = lapply(stimuli_random$orthographic,
                      function(x) c(x, " ")) %>% unlist(),
  textgrid = 'recs/00AA1.TextGrid',
  tier = 2,
  backup = FALSE,
  write = TRUE
)

annotate_textgrid(
  annotation = lapply(stimuli_random$orthographic,
                      function(x) c(x, " ")) %>% unlist(),
  textgrid = 'recs/00AA1.TextGrid',
  tier = 3,
  backup = FALSE,
  write = TRUE
)

annotate_textgrid(
  annotation = lapply(stimuli_random$broad,
                      function(x) c(x, " ")) %>% unlist(),
  textgrid = 'recs/00AA1.TextGrid',
  tier = 5,
  backup = FALSE,
  write = TRUE
)
