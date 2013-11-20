# Maintaining your own fortune file using make
#http://bradthemad.org/tech/notes/fortune_makefile.php

#POSSIBLE += $(shell ls -1 | egrep -v '\.dat|README|Makefile' | sed -e 's/$$/.dat/g')

# for all files except hidden ones
POSSIBLE += $(shell find . -maxdepth 3 \( ! -iname ".*" \) -type f | egrep -v '\.dat|README|README.md|Makefile|distrib.txt' | sed -e 's/$$/.dat/g')

all: ${POSSIBLE}

%.dat : %
	@strfile $< $@
