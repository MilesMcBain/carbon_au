the_plan <-
  drake_plan(

    doc_links = get_doc_links(),

    reports = download_report(doc_links),

)
