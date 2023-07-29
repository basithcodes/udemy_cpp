prepare:
	cmake -S . -B build
	cmake --build build

clean:
	rm -rf build
	mkdir build
