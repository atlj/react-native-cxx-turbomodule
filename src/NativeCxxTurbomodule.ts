import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  multiply(a: number, b: number): number;
}

// TODO:  Make sure to add 'CXX' suffix to the module name
export default TurboModuleRegistry.getEnforcing<Spec>('CxxTurbomoduleCxx');
