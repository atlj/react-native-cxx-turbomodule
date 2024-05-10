// https://github.com/react-native-community/cli/blob/main/docs/dependencies.md

module.exports = {
  dependency: {
    platforms: {
      /**
       * @type {import('@react-native-community/cli-types').IOSDependencyParams}
       */
      ios: {},
      /**
       * @type {import('@react-native-community/cli-types').AndroidDependencyParams}
       */
      android: {
        cxxModuleCMakeListsModuleName: 'CxxTurbomodule',
        cxxModuleCMakeListsPath: `${__dirname}/cpp/CMakeLists.txt`,
        cxxModuleHeaderName: 'CxxTurboModule',
      },
    },
  },
};
