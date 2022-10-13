- Introduces loader. Specifically babel transpilers.

- Note the major changes in the config file.

```js
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
    }
```

- Note resolve. Because of that, when webpack encounters an entry point without extention such as the following, it will look for .ts or .js

```js
entry: {
  index: "./src/index",
  home: "./src/home",
},
```

- Also note the output

```js
output: {
    filename: '[name].js',
    path: path.resolve(__dirname, 'dist')
},
```

- Also note in the src folder, we have now home.ts, index.ts and util.ts file now.

- We also need to include the tsconfig.json file. Take a note of that. 