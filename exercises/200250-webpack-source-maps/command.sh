pwd

cd ../..

cd ./exercises/200250-webpack-source-maps

cd ../../code/200250-webpack-source-maps

pwd

# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

npm init -y

npm install webpack webpack-cli webpack-dev-server --save-dev
# Or the following, both are exactly same.
npm i webpack webpack-cli webpack-dev-server -D

# Create a new webpack.config.js. You cna use touch command as well.
New-Item webpack.config.js

# Now add some code. See the ReadMe.md file.

# The following two will invoke webpack and webpack --watch commands.
npm run wpbuild

npm run wpwatch

