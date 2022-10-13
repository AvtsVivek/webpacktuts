pwd

cd ../..

cd ./exercises/200300-webpack-multiple-files

cd ../../code/200300-webpack-multiple-files

pwd

# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

npm install webpack webpack-cli webpack-dev-server --save-dev
# Or the following, both are exactly same.
npm i webpack webpack-cli webpack-dev-server -D


npm run build

# The following two will invoke webpack and webpack --watch commands.
npm run wpdevsrv

# Or

npx webpack serve

# Take a look at the url

# Now browse to http://localhost:8080/

