//
// Created by Amaruk on 2/21/2018.
//

#ifndef CLIONEXAMPLE_MYLIB_H
#define CLIONEXAMPLE_MYLIB_H

#include <iostream>

class ClassInLib
{
public:
    ClassInLib() { std::cout << "ClassInLib CTOR" << std::endl; };
    ~ClassInLib() = default;
};

#endif //CLIONEXAMPLE_MYLIB_H
