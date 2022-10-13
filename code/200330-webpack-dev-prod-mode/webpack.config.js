const path = require('path')

let production = process.env.NODE_ENV === "production";

let config = {
    entry: ["./src/index.js", "./src/home.js"],
    output: {
        filename: 'main.js',
        path: path.resolve(__dirname, 'dist')
    },
    devtool: "inline-source-map",
    mode: 'development',
    devServer: {
        static: './dist',
    },
}

if (production) {
    config.mode = "production";
    config.devtool = "inline-source-map";
  }
  
  module.exports = config;