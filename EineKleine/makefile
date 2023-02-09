LY = "C:\Program Files\LilyPond\usr\bin\lilypond.exe" 
PDFTK = "c:\bin\pdftk.exe"

PDFMAIN = eine-kleine-nachtmusik-mvt1-4.pdf

PDFPARTS = \
        clar1.pdf \
        clar2.pdf \
        clar3.pdf \
        bassclar.pdf

.SUFFIXES: .ly .pdf

.ly.pdf:
	$(LY) $*.ly

all:    eine.pdf $(PDFMAIN)

eine.pdf:       $(PDFPARTS)
	erase /q eine.pdf
	$(PDFTK) $** output $*.pdf

eine-kleine-nachtmusik-mvt1-4.pdf: eine-kleine-nachtmusik-mvt1.ly
	$(LY) eine-kleine-nachtmusik-mvt1.ly

