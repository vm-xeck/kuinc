KUIND = ~/Downloads/kuin_2021_08_17_src_ja
BIND = ~/bin
CPPC = g++

all: install

install: $(BIND) $(KUIND)
	@echo "#! /bin/bash" > kuinc
	@echo "$(KUIND)/kuin -i $$^{^@^} -s $(KUIND)/sys/ -e cpp" | tr -d \^ >> kuinc
	@echo "$(CPPC) $$^{1%.kn^}.cpp -o $$^{1%.kn^}" | tr -d \^ >> kuinc
	@echo "rm $$^{1%.kn^}.cpp" | tr -d \^ >> kuinc
	@install -m 0755 kuinc $(BIND)
	@rm kuinc
	@echo "Successfully installed kuinc to $(BIND)."
	@echo "Usage: kuinc hoge.kn -o hoge"

.PHONY: all install
