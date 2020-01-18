##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Miles McBain
##' @export
get_doc_links <- function() {

  root <- "https://wwww.environment.gov.au"
  page <- read_html("https://www.environment.gov.au/climate-change/climate-science-data/greenhouse-gas-measurement/publications#quarterly")

  html_nodes(page, css = "li") %>%
    html_nodes(css = "a") %>%
    html_attrs() %>%
    map(pluck, "href") %>%
    keep(~grepl("quarterly-update", .x)) %>%
    unlist() %>%
    paste0(root, .)

}
