emacs ?= emacs
cask ?= cask

all: test

test: clean-elc
	${MAKE} unit
	${MAKE} compile
	${MAKE} unit
	${MAKE} clean-elc

unit:
	${cask} exec ert-runner

compile:
	$(cask) exec ${emacs} -Q -batch -f batch-byte-compile emaze.el

clean-elc:
	rm -f emaze.elc

.PHONY: all test unit compile
