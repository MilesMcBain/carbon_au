## library() calls go here
library(conflicted)
library(dotenv)
library(drake)
library(rvest)
library(tidyverse)
library(stringr)
library(curl)
library(glue)

conflict_prefer("pluck", "purrr")
