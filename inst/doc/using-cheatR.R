## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
  # fig.path = "/man/figures/"
)

## -----------------------------------------------------------------------------
my_files <- list.files(path = '../man/files/', pattern = '.doc', full.names = TRUE)
my_files

## -----------------------------------------------------------------------------
library(cheatR)
results <- catch_em(flist = my_files,
                    n_grams = 10, time_lim = 1) # defaults

## -----------------------------------------------------------------------------
results

## ----cheater_graph------------------------------------------------------------
plot(results, weight_range = c(0.7, 1), remove_lonely = FALSE)

