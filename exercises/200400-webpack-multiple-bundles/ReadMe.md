- Introduces multiple bundles.

- Note the major changes in the config file. The entry is now an object as againest an array earlier.

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

- Once you build, you should see two file in the dist folder.
