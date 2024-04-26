// TODO: CHANGE MY NAME
// Check if we are building against apple
#if __has_include(<React-Codegen/RNCxxTurbomoduleSpecJSI.h>)
// TODO: CHANGE MY NAME
#include <React-Codegen/RNCxxTurbomoduleSpecJSI.h>
// Check if we are building against Android
// TODO: CHANGE MY NAME
#elif __has_include("RNCxxTurbomoduleSpecJSI.h")
// TODO: CHANGE MY NAME
#include "RNCxxTurbomoduleSpecJSI.h"
#endif

namespace facebook::react {
  // TODO: CHANGE MY NAME
  class CxxTurbomodule: public NativeCxxTurbomoduleCxxSpec<CxxTurbomodule> {
    public:
      // TODO: CHANGE MY NAME
      CxxTurbomodule(std::shared_ptr<CallInvoker> jsInvoker);

      double multiply(jsi::Runtime &rt, double a, double b);
  };
}
