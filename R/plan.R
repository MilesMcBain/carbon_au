the_plan <-
  drake_plan(

    page_links = get_doc_links(),

    pdf_links = target(get_pdf_link(page_links),
                       dynamic = map(page_links)
                       ),


    reports = target(download_report(pdf_links),
                     dynamic = map(pdf_links)
                     )

)
