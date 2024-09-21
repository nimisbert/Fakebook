# Lilypond compiler 
LILY = lilypond
# PostScript to PDF converter
PS2PDF = ps2pdf
# Build directory, pdf parts 
BUILD = build
# Sources directory, lilypond srcs
SRC = src
vpath %.ly $(WORKDIR)src $(WORKDIR)build
.PHONY: clean help

# Fakebook, rough sketches of music sheets
Lettsanity: Lettsanity.pdf
WhenYouGonnaLearn: WhenYouGonnaLearn.pdf

# Rules to make targets 
%.ps: %.ly 
	$(LILY) -f=pdf $<

%.pdf: %.ps
	$(PS2PDF) $<
	mv $@ $(BUILD)/$@
	rm $<

help:
	$(info compile source: make part.pdf)
	$(info look at a part: open part.pdf)

clean:
	rm -rf *.ps $(BUILD)/*.pdf
