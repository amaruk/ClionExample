#include "MyExe.h"
#include "MyLib.h"
#include "ThirdParty.h"

int main() {
  ClassInExe classInExe{};
  ClassInLib classInLib{};
  ClassInThirdParty classInThridParty{};
#ifdef USE_DUMMY_LIB
#error "OMG! Shouldn't use the dummy lib!"
#endif
    return 0;
}