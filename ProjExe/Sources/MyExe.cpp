#include "MyExe.h"
#include "MyLib.h"

int main() {
    ClassInExe classInExe{};
    ClassInLib classInLib{};
#ifdef USE_DUMMY_LIB
#error "OMG! Shouldn't use the dummy lib!"
#endif
    return 0;
}