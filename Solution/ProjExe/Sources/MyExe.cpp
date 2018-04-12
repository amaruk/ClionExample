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

#ifdef DEBUG_OUTPUT
  std::cout << "DEBUG OUTPUT ENABLED!\n";
#endif

    return 0;
}