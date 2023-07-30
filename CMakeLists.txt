cmake_minimum_required(VERSION 3.22)

project(udemy_cpp VERSION 0.0.1 LANGUAGES C CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(LIBRARY_NAME Library)
set(EXECUTABLE_NAME executable)


set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/") # Include the folder which contains the cmake modules
include(add_git_submodule) # from cmake modules folder include the specific file which contains our function which we want to use
add_git_submodule_func(nlohmann/json) # See this func description for its usage

# add_subdirectory(external_libraries/nlohmann/json) # If lib is available locally then use this 
add_subdirectory(configs)
add_subdirectory(src)
add_subdirectory(app)

option(COMPILE_EXECUTABLE "Compile the executable file?" ON)

if (COMPILE_EXECUTABLE)
	message("Creating executable file")
else ()
	message("Not creating executable file")
endif()

if (COMPILE_EXECUTABLE)
	exec_program(${PROJECT_BINARY_DIR}/app/${EXECUTABLE_NAME})
endif()
