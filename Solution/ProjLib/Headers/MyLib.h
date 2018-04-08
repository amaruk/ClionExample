#pragma once

#include <iostream>

class ClassInLib
{
public:
    ClassInLib() { std::cout << "ClassInLib CTOR" << std::endl; }
    ~ClassInLib() = default;
};

