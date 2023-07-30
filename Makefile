prepare:
	mkdir -p build/graphviz
	cmake -S . -B build
	cd build/graphviz && cmake ../../ --graphviz=graph.dot && dot -Tpng graph.dot -o graphImage.png
	rm -rf compile_commands.json
	ln -s build/compile_commands.json compile_commands.json
	cmake --build build -v -j $(shell nproc)

run:
	./build/app/executable

clean:
	rm -rf build
	mkdir build
