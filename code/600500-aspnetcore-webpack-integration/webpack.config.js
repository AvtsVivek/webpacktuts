const path = require('path');
// var webpack = require("webpack");

// var $ = require('jquery');

// const HtmlWebpackPlugin = require("html-webpack-plugin");

let production = process.env.NODE_ENV === "production";

let config = {
  entry: ['./webpackentry', './node_modules/jquery', './node_modules/jquery-validation', './node_modules/jquery-validation-unobtrusive', './node_modules/bootstrap'],
  output: {
     publicPath: "/js/",
     path: path.join(__dirname, '/wwwroot/js/'),
     filename: 'main.build.js'
  },
    module: {
      // rules: [
      //   {
      //     test: /\.ts$/,
      //     exclude: /node_modules/,
      //     use: "ts-loader",
      //   },
      //   {
      //     test: /\.css$/,
      //     exclude: /node_modules/,
      //     use: ["style-loader", "css-loader"],
      //   },
      // ],
    },
    resolve: {
      // This block is not needed as web pack by default resolves .js files.
      // extensions: [".ts", ".js"],
      extensions: [".js"],
    },
    // plugins: [
    //   new webpack.ProvidePlugin({
    //     $: "jquery",
    //     jQuery: "jquery"
    //   })
    // ],
    // plugins: [new HtmlWebpackPlugin({ template: "./index.html", minify: false })],
    // plugins: [new HtmlWebpackPlugin({minify: false})],
    
    // devtool: "inline-source-map",
    mode: 'development',
    // devServer: {
    //   liveReload: true, // This is default, so setting this is not necessary.
    //   // "src/**/*" represents everything in the src dir.
    //   watchFiles: ["src/**/*", "index.html"],
    //   static: "./dist",
    // },
}

if (production) {
    config.mode = "production";
    config.devtool = "inline-source-map";
  }
  
  module.exports = config;