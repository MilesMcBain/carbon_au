the_plan <-
  drake_plan(
    page_links = get_doc_links(),
    pdf_links = target(
      get_pdf_link(page_links),
      dynamic = map(page_links)
    ),
    reports = target(
      download_report(pdf_links),
      dynamic = map(pdf_links)
    ),
    reports_type_1 = reports %>%
      keep(reports %in% c(
        "output/quartlery-update-september-2013_1.pdf",
        "output/quartlery-update-june-2013.pdf",
        "output/4pp-adapting-climate-change-remote-roviana.pdf",
        "output/nggi-quartery-dec-2012.pdf",
        "output/quarterly-update-nggi-sept-2012.pdf",
        "output/quarterly-update-nggi-2012-june.pdf",
        "output/quarterly-update-nggi-2012-march.pdf",
        "output/nggi-quarterly-2011-dec.pdf",
        "output/nggi-quarterly-2011-sept.pdf"
      )),
    reports_type_1_data = target(
      get_type1_data(reports_type_1),
      dynamic = map(reports_type_1)
    )
  )

  
