- Cleans the output directory.

- Note **clean: true**

```js
output: {
    filename: '[name].js',
    path: path.resolve(__dirname, 'dist'),
    clean: true
},
```

- Also note, devServer auto reloading is enabled as follows. Here we are specifying which files to watch for. 
  - watchFiles: ["src/**/*", "index.html"],

```js
  devServer: {
    watchFiles: ["src/**/*", "index.html"],
    static: "./dist",
  },
```



