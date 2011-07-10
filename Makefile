files := ascii.txt bmp.txt chinese.txt cuneiform.txt english.txt japanese.txt \
	korean.txt libya-chinese.html numbers.txt russian.txt smp_sip.txt \
	smp_sip2.txt stripped_english.txt stripped_greek.txt test.txt yiwiki.xml

all: $(files)

%: %.bz2
	bunzip2 -k $<

clean:
	-rm -f $(files)
