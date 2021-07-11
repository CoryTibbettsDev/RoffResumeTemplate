.PHONY: all clean

all: resume.pdf

%.pdf: %.roff
	groff -T pdf -K utf8 $< > $@

%.pdf: %.ms
	groff -ms -T pdf -K utf8 $< > $@

clean:
	$(RM) *.ps *.pdf
