#include <iostream>
#include "my_lib.h"
#include "config.hpp"
#include "nlohmann/json.hpp"

int main (int argc, char *argv[]) {
	std::cout << "message" << std::endl;
	std::cout << "project_version: " << project_version << std::endl;
	print_hello_world();
	std::cout << "json lib version: " << NLOHMANN_JSON_VERSION_MAJOR << std::endl;
	return 0;
}

