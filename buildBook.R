
# Run this line if there have been major changes to runMSE:
#unlink('_bookdown_files', force=TRUE, recursive = TRUE) # delete cached files

unlink('_book', force=TRUE, recursive = TRUE) # delete old book

suppressWarnings(file.remove("userguide.rmd")) # delete the old debug file if present

rmarkdown::render_site(output_format = c('bookdown::gitbook')) # , 'bookdown::pdf_book'), encoding = 'UTF-8')

if(!dir.exists(file.path('_book', 'docs'))) dir.create(file.path('_book', 'docs'), recursive = TRUE)

file.copy('ExampleOM', '_book/docs', recursive=TRUE, overwrite = TRUE)
file.copy('ExampleData', '_book/docs', recursive=TRUE, overwrite = TRUE)
unlink(file.path('_book', 'docs', 'ExampleOM', 'build'), force=TRUE, recursive = TRUE)

