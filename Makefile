XML2TXT = xml2txt

.PHONY: all

all: broadcast.txt

broadcast.txt: src/broadcast.xml
	$(XML2TXT) src/broadcast.xml > $@
