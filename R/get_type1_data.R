##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param reports_type_1
##' @return
##' @author Miles McBain
##' @export
get_type1_data <- function(reports_type_1) {

  return(NULL)

  library(tabulizer)
  foo <- reports_type_1[1]
  pages_raw <- extract_tables(foo,
                              pages = 27
                              )

  pages_raw[[27]] %>%
    print(n = 300)

}
