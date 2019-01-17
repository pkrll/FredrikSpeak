
all: build run

build:
	swift build

run:
	./.build/x86_64-apple-macosx10.10/debug/FredrikSpeak

clean:
	rm -rf .build
