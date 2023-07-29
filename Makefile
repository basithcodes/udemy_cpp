prepare:
	cmake -S . -B build
	cmake --build build
	rm -rf compile_commands.json
	ln -s build/compile_commands.json compile_commands.json

clean:
	rm -rf build
	mkdir build
