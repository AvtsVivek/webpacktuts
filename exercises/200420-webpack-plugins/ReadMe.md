- Introduces plugins.

- Add the plugin as a requirement.

```js
const HtmlWebpackPlugin = require("html-webpack-plugin");
```

- Then html plugin key. See the following.

```js
plugins: [new HtmlWebpackPlugin({minify: false})],
```

- The above produces the output as follows.

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Webpack App</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><script defer src="index.js"></script><script defer src="home.js"></script></head>
  <body>
  </body>
</html>
```

- Note **{minify: false}**. If that is not there(**{minify: true}**, true is default), then the above html will be in one single line.
- Also note that the html produced has the scripts that are part of the build, index.js and home.js


- In the following we are giving the template(our index.html file) and then webpack plugin fill up the pieces, i.e. home.js and index.js files for us.
```js
plugins: [new HtmlWebpackPlugin({ template: "./index.html", minify: false })],
```


