XML2TXT = xml2txt

.PHONY: all
.SUFFIXES: .xml .txt

all: doc/control.txt

.xml.txt:
	$(XML2TXT) $< > $@

README.md: template.md doc/*.xml
	cp template.md $@
	for i in doc/*.xml; do \
		echo " - [`cat $$i | xq -r .Specification.Meta.Title`](/doc/`echo $$i | cut -d/ -f2 | cut -d. -f1`.txt)" >> README.md ; \
	done
