##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param page_url
##' @return
##' @author Miles McBain
##' @export

get_pdf_link <- function(page_url) {

  on.exit(Sys.sleep(2))

  pdf_page <-
    read_html(page_url) 

  pdf_link <- 
    pdf_page %>%
    html_nodes(css = "a") %>%
    html_attrs() %>%
    map(pluck, "href") %>%
    discard(is.null) %>%
    keep(~str_detect(.x, "-[a-z]+-[0-9]{4}.pdf$")) %>%
    unlist()

  pdf_link

}
