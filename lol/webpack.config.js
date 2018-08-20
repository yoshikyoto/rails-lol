const path = require('path');
const src = path.join(__dirname, 'js/src');
const dist = path.join(__dirname, 'app/assets/javascripts');


module.exports = {
  mode: 'development',
  entry: path.resolve(src, 'index.js'),
  output: {
    path: dist,
    filename: 'index.bundle.js'
  },
  resolve: {
    modules: ['node_modules'],
    extensions: ['.js', '.jsx']
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /mode_modules/,
        enforce: 'pre',
        loader: 'eslint-loader'
      },
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      }
    ]
 }
}
