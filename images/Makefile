DIA = $(wildcard *.dia)

%.pdf: %.svg
	inkscape --export-pdf=$@ $<
	#convert $< $@

%.svg: %.dia
	dia -t svg $<

all: $(patsubst %.dia,%.pdf,$(DIA)) logos

logo_usm.pdf: logo_usm.svg
	inkscape --export-pdf=$@ $<

logo_inf.pdf: logo_inf.svg
	inkscape --export-pdf=$@ $<

logos: logo_usm.pdf logo_inf.pdf

clean:
	rm -f $(patsubst %.dia,%.svg,$(DIA)) \
              $(patsubst %.dia,%.pdf,$(DIA)) \
	      logo_usm.pdf logo_inf.pdf

.PHONY: all clean logos
