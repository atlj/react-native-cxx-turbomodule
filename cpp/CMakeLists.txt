cmake_minimum_required(VERSION 3.13)

# TODO: change my name
project(CxxTurboModule)

set(CMAKE_VERBOSE_MAKEFILE on)
set(CMAKE_CXX_STANDARD 17)

add_compile_options(-fexceptions -frtti -std=c++17)

# Define all the .cpp files as source_files
file(GLOB source_files CONFIGURE_DEPENDS *.cpp)
# Build a static library from the source files
add_library(CxxTurbomodule STATIC ${source_files})

# Add headers search paths TODO Change turbomodule with proper name
target_include_directories(CxxTurbomodule PUBLIC .)

# Finally link the library with the codegen specs
target_link_libraries(CxxTurbomodule react_codegen_RNCxxTurbomoduleSpec)
