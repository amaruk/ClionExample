![Travis Status](https://travis-ci.org/amaruk/ClionExample.svg?branch=master)

This project is used to build up basic C++ CMake building environment for Windows and Linux.

# Projects Organization

* Solution: This solution contains "ProjExe" and "ProjLib". The "ProjLib" project generates a static linked library for the "ProjExe" project.
* ThirdParty: Third party header files and static linked library. Build this project and copy "ThirdParty" library file to the "lib" folder, before building the "Solution".

# IDE Candidates

Microsoft Visual Studio is expected to organize the CMake project for Windows.

JetBrains Clion IDE deals with Linux.

# CI

Travis

Check result at: https://travis-ci.org/amaruk/ClionExample