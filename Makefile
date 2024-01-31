LILYPOND = lilypond
PS2PDF = ps2pdf

vpath %.ly $(WORKDIR)src $(WORKDIR)sheets

%: %.ly
	$(LILYPOND) -f=pdf $^
	$(PS2PDF) $@.ps

clean:
	rm -rf *.ps *.pdf

