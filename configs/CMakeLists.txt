# which file you want ot configure?
configure_file(
	"config.hpp.in" # .in means input file
	"${CMAKE_BINARY_DIR}/configure_files/include/config.hpp" ESCAPE_QUOTES # here the .in is dropped
)
