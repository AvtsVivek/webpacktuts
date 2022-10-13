- Introduces plugins.

- Add the plugin as a requirement.

```js
const HtmlWebpackPlugin = require("html-webpack-plugin");
```

- Then html plugin key

```js
plugins: [new HtmlWebpackPlugin({ template: "./index.html" })],
```