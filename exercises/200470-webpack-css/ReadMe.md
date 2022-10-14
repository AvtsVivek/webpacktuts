- Css and Style loaders.

- Work in Progress 

```ps
npm install css-loader style-loader --save-dev
```

- The css-loader processes the css and the style-loader injects that into the html file.

```
{
  test: /\.css$/,
  exclude: /node_modules/,
  use: ["style-loader", "css-loader", "sass-loader"],
},
```

