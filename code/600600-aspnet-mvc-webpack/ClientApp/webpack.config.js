
const path = require('path');

var $ = require('jquery');

let production = process.env.NODE_ENV === 'production';

let config = {
  entry: ['./src/main', './src/app',  './src/site', './node_modules/jquery', './node_modules/jquery-validation', './node_modules/jquery-validation-unobtrusive', './node_modules/bootstrap'],
  output: {
     publicPath: '/dist/',
     path: path.join(__dirname, './../wwwroot/dist/'),
     filename: 'main.build.js'
  },
    module: {
      rules: [
        {
          test: /\.css$/,
          use: ['style-loader', 'css-loader'],
        },
      ],
    },
    resolve: {
      extensions: ['.js'],
    },
    mode: 'development',
}

if (production) {
    config.mode = 'production';
    config.devtool = 'inline-source-map';
  }
  
  module.exports = config;
