TARGETS = kodemus.pdf kodemus.epub kodemus.txt kodemus.html 
all: lint $(TARGETS)

XMLLINTOPTS = --nonet --noout  --xinclude --postvalid 
lint: kodemus.xml
	xmllint $(XMLLINTOPTS) $<

%.pdf: %.xml
	if true ; then \
		dblatex -T simple -P latex.class.options=a4paper $< ; \
	else \
		xsltproc --output tmp.fo \
		  --stringparam paper.type A4 \
		  --stringparam generate.toc nop \
		  --stringparam double.sided 0 \
		  --stringparam fop1.extensions 1 \
		  /usr/share/xml/docbook/stylesheet/docbook-xsl/fo/docbook.xsl \
		  $< ; \
		fop -fo tmp.fo -pdf $@ ; \
	fi

%.epub: %.xml
	dbtoepub $<
%.txt: %.xml
	xmlto txt --stringparam generate.toc=nop $<
%.html: %.xml
	xmlto html-nochunks --stringparam generate.toc=nop $<

clean:
	$(RM) $(TARGETS)
