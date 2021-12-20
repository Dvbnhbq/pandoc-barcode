all:

test:
	mkdir -p test/_export
	pandoc test/test.md -F ./pandoc-barcode --pdf-engine=weasyprint -o test/_export/test.pdf

watch:
	nodemon --exec "make -B test" -w pandoc-barcode -w . -e "md"
