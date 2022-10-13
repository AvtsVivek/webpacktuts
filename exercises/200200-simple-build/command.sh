pwd

cd ../..

cd ./exercises/200200-simple-build

cd ../../code/200200-simple-build

pwd

# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

npm init -y

npm install webpack webpack-cli webpack-dev-server --save-dev
# Or the following, both are exactly same.
npm i webpack webpack-cli webpack-dev-server -D

webpack 
# or
npx webpack

# The following are some of the common web pack commands.

npx webpack version

npx webpack configtest

npx webpack init

npx webpack serve

npx webpack --watch
