pwd

cd ../..

cd ./exercises/200470-webpack-css

cd ../../code/200470-webpack-css

pwd

# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

npm install webpack webpack-cli webpack-dev-server --save-dev
# Or the following, both are exactly same.
npm i webpack webpack-cli webpack-dev-server -D

# Add Babel packages as well
npm install babel-loader @babel/core @babel/preset-env --save-dev

# Type script
npm install ts-loader typescript --save-dev

# Plugins
npm install html-webpack-plugin --save-dev

# Css and style loaders
npm install css-loader style-loader --save-dev

npm run wpbuild

npm run build

# The following two will invoke webpack and webpack --watch commands.
npm run start

# Or

npx webpack serve

# Take a look at the url

# Now browse to http://localhost:8080/

