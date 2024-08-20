# Makefile for AppleScript Project

# Variables
SRC_DIR = src
OUT_DIR = out
SCRIPT_DIR = Script
INSTALL_DIR = "$(HOME)/Library/Application Scripts/com.if.Amphetamine"

SRC_FILE = $(SRC_DIR)/processDiscovery.applescript
OUT_FILE = $(OUT_DIR)/processDiscovery.scpt
ZIP_FILE = $(SCRIPT_DIR)/Amphetamine_Expanded_Process_Detection.zip

# Default target
all: build

# Clean target
clean:
	rm -f "$(OUT_FILE)" "$(ZIP_FILE)"
	rm -rf "$(OUT_DIR)"

# Build target
build:
	mkdir -p "$(OUT_DIR)"
	osacompile -o "$(OUT_FILE)" "$(SRC_FILE)"

# Bundle target
bundle: build
	zip -j "$(ZIP_FILE)" "$(OUT_FILE)"

# Install target
install: build
	mkdir -p $(INSTALL_DIR)
	cp "$(OUT_FILE)" $(INSTALL_DIR)

.PHONY: all clean build bundle install
