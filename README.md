# carbon_au

run reproducibly with:

```r
## remotes::install_github("milesmcbain/capsule")

capsule::run(drake::r_make())

drake::subtargets(pdf_links) %>%
  purrr::map(~drake::get_cache())

```
