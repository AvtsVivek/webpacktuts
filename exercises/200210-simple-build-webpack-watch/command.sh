pwd

cd ../..

cd ./exercises/200210-simple-build-webpack-watch

cd ../../code/200210-simple-build-webpack-watch

# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

npm init -y

npm install webpack webpack-cli webpack-dev-server --save-dev
# Or the following, both are exactly same.
npm i webpack webpack-cli webpack-dev-server -D

# The following two will invoke webpack and webpack --watch commands.
npm run wpbuild

npm run wpwatch
