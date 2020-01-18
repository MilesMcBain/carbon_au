##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Miles McBain
##' @export
get_doc_links <- function() {

  root <- "https://www.environment.gov.au"
  menu <- read_html("https://www.environment.gov.au/climate-change/climate-science-data/greenhouse-gas-measurement/publications#quarterly")

page_urls <-
  html_nodes(menu, css = "li") %>%
  html_nodes(css = "a") %>%
  html_attrs() %>%
  map(pluck, "href") %>%
  keep(~str_detect(.x, "quarterly-update")) %>%
  unlist() %>%
  paste0(root, .)

  page_urls

}
