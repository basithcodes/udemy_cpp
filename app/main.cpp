#include <iostream>
#include "my_lib.h"
#include "config.hpp"

int main (int argc, char *argv[]) {
	std::cout << "message" << std::endl;
	std::cout << "project_version: " << project_version << std::endl;
	print_hello_world();
	return 0;
}

