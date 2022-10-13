- This introduces web pack config file
- You can do a **npx webpack init**. But this does a lot or unnecessary stuff. So create a webpack.config.js file manually 

- What we have below is completely defaults. dist folder is default. Also main.js and also src/index.js

```js
module.exports = {
    entry: './src/index.js',
    output: {
        filename: 'main.js',
        path: path.resolve(__dirname, 'dist')
    },
    mode: 'development'
}
```  