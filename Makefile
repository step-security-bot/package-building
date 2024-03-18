#-------------------------------------------------------------------------------
# Running `make` will show the list of subcommands that will run.

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))

#-------------------------------------------------------------------------------
# Global stuff.

GO=$(shell which go)
HOMEBREW_PACKAGES=bash coreutils findutils git git-lfs go grep jq nodejs python@3.11 shellcheck

# Determine the operating system and CPU arch.
OS=$(shell uname -o | tr '[:upper:]' '[:lower:]')

# Determine which version of `echo` to use. Use version from coreutils if available.
ECHOCHECK_HOMEBREW_AMD64 := $(shell command -v /usr/local/opt/coreutils/libexec/gnubin/echo 2> /dev/null)
ECHOCHECK_HOMEBREW_ARM64 := $(shell command -v /opt/homebrew/opt/coreutils/libexec/gnubin/echo 2> /dev/null)

ifdef ECHOCHECK_HOMEBREW_AMD64
	ECHO=/usr/local/opt/coreutils/libexec/gnubin/echo -e
else ifdef ECHOCHECK_HOMEBREW_ARM64
	ECHO=/opt/homebrew/opt/coreutils/libexec/gnubin/echo -e
else ifeq ($(findstring linux,$(OS)), linux)
	ECHO=echo -e
else
	ECHO=echo
endif

#-------------------------------------------------------------------------------
# Running `make` will show the list of subcommands that will run.

all: help

.PHONY: help
## help: [help]* Prints this help message.
help:
	@ $(ECHO) "Usage:"
	@ $(ECHO) ""
	@ gsed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' | gsed -e 's/^/ /' | \
		while IFS= read -r line; do \
			if [[ "$$line" == *"]*"* ]]; then \
				$(ECHO) "\033[1;33m$$line\033[0m"; \
			else \
				$(ECHO) "$$line"; \
			fi; \
		done

#-------------------------------------------------------------------------------
# Installation

.PHONY: install-tools-mac
## install-tools-mac: [tools]* Install/upgrade the required tools for macOS.
install-tools-mac:
	@ $(ECHO) " "
	@ $(ECHO) "\033[1;33m=====> Installing required packages for macOS (Homebrew)...\033[0m"
	brew update && brew install $(HOMEBREW_PACKAGES) && brew upgrade $(HOMEBREW_PACKAGES)

	@ $(ECHO) " "
	@ $(ECHO) "\033[1;33mTo update to the latest versions, run:\033[0m"
	@ $(ECHO) "\033[1;33m    brew update && brew upgrade\033[0m"
	@ $(ECHO) " "

#-------------------------------------------------------------------------------
# Linting

.PHONY: markdownlint
## markdownlint: [lint] Runs `markdownlint` against all Markdown (*.md) documents.
markdownlint:
	@ $(ECHO) " "
	@ $(ECHO) "=====> Running Markdownlint..."
	npx -y markdownlint-cli --fix '**/*.md' --ignore 'node_modules'

.PHONY: hadolint
## hadolint: [lint] Runs `hadolint` against all Dockerfiles.
hadolint:
	@ $(ECHO) " "
	@ $(ECHO) "=====> Running Hadolint..."
	gfind . -type f -name "Dockerfile*" | gxargs -I% hadolint "%"

.PHONY: lint
## lint: [lint]* Runs ALL linting/validation tasks.
lint: markdownlint hadolint

#-------------------------------------------------------------------------------
# Building

.PHONY: tidy
## tidy: [lint] Runs `go mod tidy` to clean up dependencies.
tidy:
	@ $(ECHO) " "
	@ $(ECHO) "=====> Tidying Go dependencies..."
	gfind . -type f -name "go.mod" | gxargs -I% dirname "%" | gxargs -I@ bash -c 'cd "@" && go mod tidy -go=1.20 && go get -d -u -t -v ./...'

.PHONY: build
## build: [build]* Build the necessary files for the project.
build:
	@ $(ECHO) " "
	@ $(ECHO) "=====> Building project files..."
	gfind . -type f -name "generate-from-templates.go" | gxargs -I% dirname "%" | gxargs -I@ bash -c 'cd "@" && go run generate-from-templates.go'
