TARGETS = kodemus.pdf kodemus.epub kodemus.txt kodemus.html 
all: lint $(TARGETS)

XMLLINTOPTS = --nonet --noout  --xinclude --postvalid 
lint: kodemus.xml
	xmllint $(XMLLINTOPTS) $<

%.pdf: %.xml
	if false ; then \
		dblatex -T simple -P latex.class.options=a4paper $< ; \
	else \
		xsltproc --output tmp.fo \
		  stylesheet-fo.xsl \
		  $< ; \
		fop -fo tmp.fo -pdf $@ ; \
	fi

%.epub: %.xml
	dbtoepub -s stylesheet-epub.xsl $<
%.txt: %.xml
	xmlto txt --stringparam generate.toc=nop $<
%.html: %.xml
	xmlto -x stylesheet-html.xsl html-nochunks $<

clean:
	$(RM) $(TARGETS)
