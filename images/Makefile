#===STRING MANIPULATIONS===
SVGS = $(shell find . -name '*.svg')
DIAS = $(shell find . -name '*.dia')

SVGS2PDF = $(patsubst %.svg,%.pdf,$(SVGS))
DIAS2PDF = $(patsubst %.dia,%.pdf,$(DIAS))

ALLIMAGES = $(DIAS2PDF) $(SVGS2PDF)
#==========================

#===CONVERSIONS===
%.pdf: %.svg
	inkscape --without-gui --export-pdf=$@ $<

%.svg: %.dia
	dia -t svg $<
#=================

all: $(ALLIMAGES)

clean:
	rm -f $(ALLIMAGES)

.PHONY: all clean
