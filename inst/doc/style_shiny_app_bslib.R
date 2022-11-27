## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(bslib, warn.conflicts = FALSE)
library(rlang)
library(dplyr, warn.conflicts = FALSE)

## -----------------------------------------------------------------------------
rlang::fn_fmls_names(bslib::bs_theme) %>%
  tail(-3)

