# BASHAI

SHELL := /bin/bash
ROOT := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

# -----------------------------------------------------------------------------
# welcome
# -----------------------------------------------------------------------------

.DEFAULT_GOAL = info

.PHONY: info
info:
	@echo "BASH AI: $(ROOT)"

# -----------------------------------------------------------------------------
# linters
# -----------------------------------------------------------------------------

.PHONY: shellcheck
shellcheck:
	@shellcheck --norc --shell=bash bin/*
