# This will contain user defined cmake functions

# This function will add git modules and if those modules contains
# cmake files then it will work else it wont work.
# In case the module doesnt contain CmakeLists.txt then add that 
# module manually in the project
function(add_git_submodule_func dir)
	find_package(Git REQUIRED)

	if (NOT EXISTS ${dir}/CMakeLists.txt)
		execute_process(
			COMMAND ${GIT_EXECUTABLE} 
			submodule update --init --recursive 
			-- ${dir}/
			WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
		)
	endif()

	if(EXISTS ${dir}/CMakeLists.txt) 
		add_subdirectory(${PROJECT_SOURCE_DIR}/${dir})
	endif()
endfunction(add_git_submodule_func)
