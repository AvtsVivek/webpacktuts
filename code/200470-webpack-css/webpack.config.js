const path = require('path');

const HtmlWebpackPlugin = require("html-webpack-plugin");

let production = process.env.NODE_ENV === "production";

let config = {
    entry: ["./src/index", "./src/home"],
    output: {
        filename: 'main.js',
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
        {
          test: /\.css$/,
          exclude: /node_modules/,
          // The array below is order dependent. We want the loaders to process in a specific order. We want the css loader to process first.
          // Then the style loader. Note here the order is reverse.
          // https://webpack.js.org/concepts/loaders/#loader-features
          use: ["style-loader", "css-loader"],
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