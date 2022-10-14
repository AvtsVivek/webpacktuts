const path = require('path');

const HtmlWebpackPlugin = require("html-webpack-plugin");

let production = process.env.NODE_ENV === "production";

let config = {
    entry: {
      index: "./src/index",
      home: "./src/home",
    },
    output: {
        filename: '[name].js',
        path: path.resolve(__dirname, 'dist'),
        clean: true
    },
    module: {
      rules: [
        {
          test: /\.ts$/,
          exclude: /node_modules/,
          use: "ts-loader",
        },
      ],
    },
    resolve: {
      extensions: [".ts", ".js"],
    },
    
    plugins: [new HtmlWebpackPlugin({ template: "./index.html", minify: false })],
    // plugins: [new HtmlWebpackPlugin({minify: false})],
    
    devtool: "inline-source-map",
    mode: 'development',
    devServer: {
      liveReload: true, // This is default, so setting this is not necessary.
      // "src/**/*" represents everything in the src dir.
      watchFiles: ["src/**/*", "index.html"],
      static: "./dist",
    },
}

if (production) {
    config.mode = "production";
    config.devtool = "inline-source-map";
  }
  
  module.exports = config;