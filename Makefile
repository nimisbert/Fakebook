# Compilation
LILY = lilypond # Lilypond 
PDFC = ps2pdf   # PDF converter
# Files
SRC = dictee-1.ly \
	  dictee-2.ly \
	  grids-1.ly  \
	  rythms-1.ly \
	  red-rose.ly \
	  lettsanity.ly \
	  surprise-haydn.ly
PS2 = $(SRC:.ly=.ps)
PDF = $(PS2:.ps=.pdf)
# Folders
vpath %.ly $(WORKDIR)src
# Targets
all: $(PDF)
dictee-1: dictee-1.pdf         # Dictee  1 : LesCaves - "Do Majeur"
dictee-2: dictee-2.pdf         # Dictee  2 : LesCaves - "Saxophone"
dictee-3: surprise-haydn.pdf   # Dictee  3 : Haydn - "Suprise" 
dictee-4: sound-of-silence.pdf # Dictee  4 : Simon & Garfunkel - "Sound Of Silence" 
grids-1: grids-1.pdf           # Grilles 1 : LesCaves - "1ere annee"
red-rose: red-rose.pdf         # 
lettsanity: lettsanity.pdf     # Releve  1 : Lettuce - "Lettsanity"

# Rules
%.ps: %.ly 
	$(LILY) -f=pdf $<
%.pdf: %.ps
	$(PDFC) $<
clean:
	rm -rf *.ps *.pdf