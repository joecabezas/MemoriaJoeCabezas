#===STRING MANIPULATIONS===
SVGS = $(shell find . -name '*.svg')
DIAS = $(shell find . -name '*.dia')
GIFS = $(shell find . -name '*.gif')

SVGS2PDF = $(patsubst %.svg,%.pdf,$(SVGS))
DIAS2PDF = $(patsubst %.dia,%.pdf,$(DIAS))
GIFS2PDF = $(patsubst %.gif,%.png,$(GIFS))

ALLIMAGES = $(DIAS2PDF) $(SVGS2PDF) $(GIFS2PDF)
#==========================

#===CONVERSIONS===
%.png: %.gif
	convert $< $@

%.pdf: %.svg
	inkscape --without-gui --export-pdf=$@ $<

%.svg: %.dia
	dia -t svg $<
#=================

all: $(ALLIMAGES)

clean:
	rm -f $(ALLIMAGES)

.PHONY: all clean
