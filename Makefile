prepare:
	mkdir build
	mkdir -p build/graphviz
	cmake -S . -B build
	cmake --build build
	cd build/graphviz && cmake ../../ --graphviz=graph.dot && dot -Tpng graph.dot -o graphImage.png
	rm -rf compile_commands.json
	ln -s build/compile_commands.json compile_commands.json

clean:
	rm -rf build
