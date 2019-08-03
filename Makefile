#

ALL=sample.xlsx

all: $(ALL)

clean:
	/bin/rm -f $(ALL)

sample.xlsx: src/*.xml src/*/*.xml src/_rels/.rels src/*/_rels/*.rels
	cd src; zip -Dr ../$@ .
