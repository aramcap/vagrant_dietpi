BUILD_DIR := ./target

all: build

.PHONY: build clean

build:
	bash build.sh

clean:
	rm -r $(BUILD_DIR)