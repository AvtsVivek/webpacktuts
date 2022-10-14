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
  liveReload: true, // This is default, so setting this is not necessary.
  // "src/**/*" represents everything in the src dir.
  watchFiles: ["src/**/*", "index.html"],
  static: "./dist",
},
```

- Now do npm run start(npx webpack serve). 
  - This will start the server, then do some changes to index.html and then see the live changes being done!



