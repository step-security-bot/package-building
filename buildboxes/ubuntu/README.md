# Generating the files for Ubuntu

## Prerequisites

You need to have Go 1.19+ installed. If you are on macOS, you can install it from Homebrew with:

```bash
brew install go
```

## Usage

```bash
go run generate-from-templates.go
```

It will overwrite:

* `Dockerfile.v*`
