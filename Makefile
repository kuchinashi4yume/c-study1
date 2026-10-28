all: debug
debug:
	@cmake -S . -B build
	@cmake --build build
	@cls
	@build/main.exe