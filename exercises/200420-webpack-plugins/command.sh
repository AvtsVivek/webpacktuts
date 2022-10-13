pwd

cd ../..

cd ./exercises/200420-webpack-plugins

cd ../../code/200420-webpack-plugins

pwd

# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

npm install webpack webpack-cli webpack-dev-server --save-dev
# Or the following, both are exactly same.
npm i webpack webpack-cli webpack-dev-server -D

# Add Babel packages as well
npm install babel-loader @babel/core @babel/preset-env --save-dev
# Or the following, both are exactly same.
npm i babel-loader @babel/core @babel/preset-env -D

# Type script
npm install ts-loader typescript --save-dev
# Or the following, both are exactly same.
npm i ts-loader typescript -D

# Plugins
npm install html-webpack-plugin --save-dev
# Or the following, both are exactly same.
npm i html-webpack-plugin -D

npx webuild

npm run build

# The following two will invoke webpack and webpack --watch commands.
npm run start

# Or

npx webpack serve

# Take a look at the url

# Now browse to http://localhost:8080/

