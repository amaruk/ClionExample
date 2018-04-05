//
// Created by Amaruk on 2/18/2018.
//

#ifndef CLIONEXAMPLE_MAIN_H
#define CLIONEXAMPLE_MAIN_H

#include <iostream>
#include "version.h"

class ClassInExe
{
public:
    ClassInExe() { std::cout << "ClassInExe CTOR version " << PROJ_EXE_VERSION_MAJOR << "." << PROJ_EXE_VERSION_MINOR << std::endl; }
    ~ClassInExe() = default;
};

#endif //CLIONEXAMPLE_MAIN_H
