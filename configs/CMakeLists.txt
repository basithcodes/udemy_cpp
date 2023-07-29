# which file you want to configure?
configure_file(
	"config.hpp.in" # .in means input file
	# Put the config.hpp file in binary or build directory because when cmake build command 
	# is run then library will be created which can include this file
	"${PROJECT_BINARY_DIR}/configure_files/include/config.hpp" ESCAPE_QUOTES # here the .in is dropped
)
