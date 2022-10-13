- This introduces webpacks dev server

- Reference [web pack devtools](https://webpack.js.org/configuration/devtool/) 

```js
devServer: {
    static: './dist',
},
```

- Runs web pack in watch mode.
- Provides Http Server
- It runs in memory, it does not produce any accets on disk.

- Also I have added a script command in the package.json file as follows.

```js
    "wpdevsrv": "webpack serve",
```

- 


