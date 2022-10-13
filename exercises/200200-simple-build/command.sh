pwd

cd ../..

cd ./exercises/200200-simple-build

cd ../../code/200200-simple-build

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
