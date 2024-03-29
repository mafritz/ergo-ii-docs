library(tidyverse)
library(here)
library(knitr)
library(kableExtra)
library(papaja)
library("ggokabeito")

## Graphics
theme_set(theme_apa(box = TRUE))

scale_colour_discrete <- function(...) scale_colour_okabe_ito()
scale_fill_discrete <- function(...) scale_fill_okabe_ito()

## Table
custom_table <- function(data = NULL, caption_text = NULL, col_names = NULL, digits = 3) {
  if (!hasArg(col_names)) {
    col_names <- names(data)
  }

  data |>
    kable(
      format = "latex",
      booktabs = TRUE,
      longtable = TRUE,
      col.names = col_names,
      caption = caption_text,
      digits = digits
    ) %>%
    kable_styling(latex_options = c("striped", "repeat_header"))
}
