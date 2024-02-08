.PHONY: all clean

all:
	$(MAKE) -C outputs

clean:
	rm -f outputs/*.docx outputs/*.pdf outputs/*.txt
	rm -f *~

