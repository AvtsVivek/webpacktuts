- This shows differnt modes, namely production and development

- Note the major changes in the config file.

```js
let production = process.env.NODE_ENV === "production";
```

```js
if (production) {
    config.mode = "production";
    config.devtool = "inline-source-map";
  }
  
  module.exports = config;
```

- The scripts in package.json file are changed as follows.

```js
    "start": "webpack serve",
    "build": "set NODE_ENV=production&&webpack",
```
