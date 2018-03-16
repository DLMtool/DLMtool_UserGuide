rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')

if(!dir.exists(file.path('_book', 'docs'))) dir.create(file.path('_book', 'docs'), recursive = TRUE)

file.copy('ExampleOM', '_book/docs', recursive=TRUE, overwrite = TRUE)
file.copy('ExampleData', '_book/docs', recursive=TRUE, overwrite = TRUE)
unlink(file.path('_book', 'docs', 'ExampleOM', 'build'), force=TRUE, recursive = TRUE)

