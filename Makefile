# Top level makefile, the real shit is at src/Makefile

default: all

.DEFAULT:
	cd deps/hiredis && $(MAKE) all
	cd src && $(MAKE) $@

install:
	cd src && $(MAKE) $@

.PHONY: install
