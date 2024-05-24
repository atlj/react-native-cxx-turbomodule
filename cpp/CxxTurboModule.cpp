// TODO: CHANGE MY NAME
#include "CxxTurboModule.h"

namespace facebook::react {
  // TODO: CHANGE MY NAME
  CxxTurbomodule::CxxTurbomodule(std::shared_ptr<CallInvoker> jsInvoker)
  // TODO: CHANGE MY NAME
: NativeCxxTurbomoduleCxxSpec(std::move(jsInvoker)) {
    }

  // TODO: CHANGE MY NAME
  double CxxTurbomodule::multiply(jsi::Runtime &rt, double a, double b) {
    return a * b;
  }
}
