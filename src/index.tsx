const CxxTurbomodule = require('./NativeCxxTurbomodule').default;

export function multiply(a: number, b: number): number {
  return CxxTurbomodule.multiply(a, b);
}
