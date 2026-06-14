# git/custom-triplets/x64-linux-static.cmake:jeff
#
# Produce static libraries on x64-Linux target
#
# This configuration is specific to the configuration of our dependency tree
# of nomlib. We wish to maintain support of the three major OS trees that
# nomlib runs on -- Darwin and Linux as first-class citizens. Support for MS
# Windows 7..8.1+ was later added during nomlib's development.
#
# SEE ALSO
# 1. https://github.com/i8degrees/nomlib.git
# 2. https://github.com/i8degrees/nomlib-builder.git
# 3. https://github.com/i8degrees/ttcards.git
#

set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
# NOTE(JEFF): Produce static libraries for us to consume
set(VCPKG_LIBRARY_LINKAGE static)
set(VCPKG_CMAKE_SYSTEM_NAME Linux)
# IMPORTANT(JEFF): We can cut down on the build time by a large margin if we
# choose only to build the Release configuration target of each library.
set(VCPKG_BUILD_TYPE "Release")
# IMPORTANT(JEFF): The default is to use the GNU GCC compiler. We opt for
# clang because this allows us (nomlib) to conform to just one compiler across
# every supported platform.
set(VCPKG_C_COMPILER clang)
set(VCPKG_CXX_COMPILER clang++)

set(VCPKG_FIXUP_ELF_RPATH ON)

