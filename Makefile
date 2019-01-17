
all: build run

build:
	swift build

run:
	./.build/debug/FredrikSpeak

clean:
	rm -rf .build
