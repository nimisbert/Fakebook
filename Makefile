LILYPOND = lilypond 				# Lilypond compilateur 
PS2PDF = ps2pdf						# PostScript to PDF converter
vpath 	%.ly 						\
	$(WORKDIR)partitions/dictees	\
	$(WORKDIR)partitions/funk		\
	$(WORKDIR)partitions/jazz
.PHONY: clean help

%.ps: %.ly 
	$(LILYPOND) -f=pdf $<
%.pdf: %.ps
	$(PS2PDF) $<
help:
	$(info compiler une partition: make partition.pdf)
	$(info ouvrir une partition: open partition.pdf)
clean:
	rm -rf *.ps *.pdf
