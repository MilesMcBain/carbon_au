##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param doc_link
##' @return
##' @author Miles McBain
##' @export
download_report <- function(doc_link) {

  on.exit(Sys.sleep(2))

  link_suffix <- str_extract(doc_link,
                             "-[a-z]+-[0-9]{4}.pdf$")

  file_path <- file.path("output",
                         link_suffix)

  message(doc_link)
  curl_download(doc_link,
                destfile = file_path)

  file_out(file_path)

}
