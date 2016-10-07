emacs ?= emacs
bemacs = $(emacs) -batch


test:
	$(bemacs) -l test/run-tests


.PHONY: all test
