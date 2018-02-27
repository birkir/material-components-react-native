const path = require('path');
const blacklist = require('metro/src/blacklist');

const config = {
  getBlackListRE() {
    return blacklist([
      /example\/.*/,
    ]);
  },

  // Add peerDependencies here
  extraNodeModules: {
    react: path.resolve(__dirname, 'node_modules/react'),
    'prop-types': path.resolve(__dirname, 'node_modules/prop-types'),
  },
};

module.exports = config;