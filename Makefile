XML2TXT = xml2txt

.PHONY: all
.SUFFIXES: .xml .txt

all: broadcast.txt

.xml.txt:
	$(XML2TXT) $< > $@
