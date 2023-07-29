cmake_minimum_required(VERSION 3.22)

project(udemy_cpp VERSION 0.0.1 LANGUAGES C CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(LIBRARY_NAME Library)
set(EXECUTABLE_NAME executable)

add_subdirectory(configs)
add_subdirectory(src)
add_subdirectory(app)

option(COMPILE_EXECUTABLE "Compile the executable file?" ON)

if (COMPILE_EXECUTABLE)
	message("Creating executable file")
else ()
	message("Not creating executable file")
endif()

