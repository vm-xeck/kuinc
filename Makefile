KUIND = ~/Downloads/kuin_2021_08_17_src_ja
BIND = ~/bin
CPPC = g++

all: install

install: BIND KUIND
	@echo "#! /bin/bash" > kuinc
	@echo "$(KUIND)/kuin -i "$@" -s $(KUIND)/sys/ -e cpp" >> kuinc
	@echo "$(CPPC) ${1%.kn}.cpp -o ${1%.kn}" >> kuinc
	@echo "rm ${1%.kn}.cpp" >> kuinc
	install -m kuinc $(BIND)
	@echo "Successfully installed kuinc."
	@echo "Usage: kuinc hoge.kn -o hoge"

.PHONY: all install
