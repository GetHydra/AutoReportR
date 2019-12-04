#!/bin/sh


FILES=*html
for f in $FILES
do

wkhtmltopdf $f REPORTS/$(basename "$f" .html)_REPORT.pdf
done

rm -r *html
rm -r figure/*
