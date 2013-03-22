TARGETS = kodemus.pdf kodemus.epub kodemus.txt kodemus.html 
all: lint $(TARGETS)

XMLLINTOPTS = --nonet --noout  --xinclude --postvalid 
lint: kodemus.xml
	xmllint $(XMLLINTOPTS) $<

%.pdf: %.xml
	if true ; then \
		dblatex -T simple $< ; \
	else \
	  xsltproc --output tmp.fo --stringparam paper.type A4 \
	    /usr/share/xml/docbook/stylesheet/docbook-xsl/fo/docbook.xsl \
	    $< ; \
	  fop -fo tmp.fo -pdf $@ ; \
	fi

%.epub: %.xml
	dbtoepub $<
%.txt: %.xml
	xmlto txt $<
%.html: %.xml
	xmlto html-nochunks $<

clean:
	$(RM) $(TARGETS)
