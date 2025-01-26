# BASHAI

SHELL := /bin/bash
ROOT := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

# -----------------------------------------------------------------------------
# welcome
# -----------------------------------------------------------------------------

.DEFAULT_GOAL = shell

.PHONY: shell
shell: export PATH := "$(ROOT)/bin:${PATH}"
shell:
	@bash --rcfile "$(ROOT)/etc/bashrc"

# -----------------------------------------------------------------------------
# linters
# -----------------------------------------------------------------------------

.PHONY: shellcheck
shellcheck:
	@shellcheck --norc --shell=bash bin/*

