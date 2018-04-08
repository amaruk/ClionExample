#pragma once

#include <iostream>
#include "version.h"

class ClassInExe
{
public:
    ClassInExe() { std::cout << "ClassInExe CTOR version " << PROJ_EXE_VERSION_MAJOR << "." << PROJ_EXE_VERSION_MINOR << std::endl; }
    ~ClassInExe() = default;
};

