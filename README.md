Kodémus
=======


Videre arbeide skal skje i EFNs Git-repository, https://github.com/EFN/kodemus.



DocBook-setting av Tor Åge Bringsværds novelle Kodemus. 

Layoutmessig bør vel sluttproduktet likne på novellen slik den er
trykket - se html-filen i første innsjekking for noe som likner mye-
bortsett fra manglende innrykk i alle avsnitt. Teksten er satt (I
samlingen Karavane) med delvis avsnittsbrudd med blank linje mellom
avsnittene (markert med p-tag i html) og delvis med avsnitt som løper
i hverandre,markert med br-tag. Der det er dialoger er dette noe mer
komplisert.

Dersom noen ønsker å bidra, men ikke er komfortable med git / github,
last ned filer, editer og send til meg, så får jeg korreksjonene inn.

For å lage de ulike formatene fra DocBook-kildefilen på Debian, følgende
pakker må installeres:

  apt-get install dbtoepub xmlto libxml2-utils docbook-xsl calibre

For tips om DocBook-tagging, sjekk

 * http://geant4.web.cern.ch/geant4/workAreaUserDocKA/AuthorsInstruction/IntroDocBook.html
 * http://www.docbook.org/tdg/

Morten
