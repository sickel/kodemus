TARGETS = kodemus.pdf kodemus.epub kodemus.txt kodemus.html 
all: lint $(TARGETS)

XMLLINTOPTS = --nonet --noout  --xinclude --postvalid 
lint: kodemus.xml
	xmllint $(XMLLINTOPTS) $<

%.pdf: %.xml
	dblatex -T simple $<
%.epub: %.xml
	dbtoepub $<
%.txt: %.xml
	xmlto txt $<
%.html: %.xml
	xmlto html-nochunks $<

clean:
	$(RM) $(TARGETS)
