#!/bin/sh

# remove folders using for building, if we want the book from scratch
rm -rf ./_bookdown_files/
# remove output folder as well
rm -rf ./public/

# build the book
Rscript -e "bookdown::render_book(input = 'index.Rmd', output_format = 'bookdown::gitbook', config_file = '_bookdown.yml')"

