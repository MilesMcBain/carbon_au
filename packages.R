## library() calls go here
library(conflicted)
library(dotenv)
library(drake)
library(rvest)
library(tidyverse)
library(stringr)
library(curl)
library(glue)
library(pdftools)

conflict_prefer("pluck", "purrr")
conflict_prefer("filter", "dplyr")
library(rmarkdown)
