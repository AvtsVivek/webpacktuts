
# If you want to create the project from scratch.

# First cd into the correct folder. Ensure first the folder is present.

# https://dev.to/larswillemsens/managing-asp-net-core-mvc-front-end-dependencies-with-npm-and-webpack-part-1-3jf5

pwd

cd ../..

pwd

cd ./exercises/600600-aspnet-mvc-webpack

cd ../../code/600600-aspnet-mvc-webpack

pwd

############################################################

# 1. First create the asp.net core 6 web app solution
# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

$SolutionName = "AspNetMvcWebPack"

$ProjectFileName = $SolutionName + ".csproj"

$ProjectFileNameCurrentPath = "./" + $ProjectFileName

$SolutionNameCopyPath = "./" + $SolutionName + "/*"

$SolutionNamePath = "./" + $SolutionName

$NewLineString = [Environment]::NewLine

dotnet new sln --name $SolutionName

dotnet new mvc --name $SolutionName --framework net6.0

Copy-Item $SolutionNameCopyPath . -Recurse

# Now that we have copied all of the items inside of the folder, we can delete all of the items inside of it and the folder itself.

Remove-Item $SolutionNamePath -Recurse

dotnet sln add $ProjectFileName

dotnet build $ProjectFileNameCurrentPath

dotnet run --project $ProjectFileNameCurrentPath

dotnet new gitignore

New-Item -Path '.\ClientApp\src' -ItemType Directory

New-Item -Path ".\ClientApp\src\app.js"

New-Item -Path ".\ClientApp\src\main.js"

New-Item -Path ".\ClientApp\src\other.js"

New-Item -Path ".\ClientApp\src\site.js"

New-Item -Path ".\ClientApp\src\somecss.css"

$AppFileContent = @"

// import 'bootstrap';
// import './scss/app.scss';
// import { $, jQuery } from 'jquery';

"@

$MainFileContent = @"
var other = require('./other');

global.jQuery = global.$ = require('jquery');

jQuery('#jqueryTestDiv').append('<p>Hello World! If you are seeing this, then jquery is loaded....</p>');

alert('Here we go');

other();
"@

$OtherFileContent = @"

function func() {
     //alert('loaded!!! Just for testing');
}

module.exports = func;
"@

$SiteJsFileContent = @"

// JS Dependencies: Popper, Bootstrap & JQuery
import '@popperjs/core';
import 'bootstrap';



// CSS Dependencies: Bootstrap
import 'bootstrap/dist/css/bootstrap.css';

// Custom JS imports
// ... none at the moment

// Custom CSS imports
import './somecss.css';

console.log('The \'site\' bundle has been loaded!');

"@

Add-Content -Path ".\ClientApp\src\app.js" -Value $AppFileContent

Add-Content -Path ".\ClientApp\src\main.js" -Value $MainFileContent

Add-Content -Path ".\ClientApp\src\other.js" -Value $OtherFileContent

Add-Content -Path ".\ClientApp\src\site.js" -Value $SiteJsFileContent

$SomeSiteCssFileContent = Get-Content -Path ".\wwwroot\css\site.css" 

Add-Content -Path ".\ClientApp\src\somecss.css" -Value $SomeSiteCssFileContent

$NewLineString = [Environment]::NewLine

Add-Content -Path ".\ClientApp\src\somecss.css" -Value $NewLineString

$SomeSiteCssFileContent = Get-Content -Path ".\Views\Shared\_Layout.cshtml.css" 

Add-Content -Path ".\ClientApp\src\somecss.css" -Value $SomeSiteCssFileContent

Set-Location ClientApp

npm init -y

Remove-Item -Recurse -Force node_modules

# Dev Server may not be needed, need to look into. Also webpack-cli
# npm install webpack webpack-cli webpack-dev-server --save-dev

npm install jquery jquery-validation jquery-validation-unobtrusive bootstrap @popperjs/core --save

npm install webpack webpack-cli --save-dev

npm install css-loader style-loader --save-dev

npm install

# Add the following to the scripts section of Package.json

    "start": "webpack serve",
    "build": "set NODE_ENV=production&&webpack",
    "wpbuild": "webpack",
    "wpdevsrv": "webpack serve",

New-Item -Path ".\webpack.config.js"

$WebPackConfigFileContent=@"

const path = require('path');

var $ = require('jquery');

let production = process.env.NODE_ENV === 'production';

let config = {
  entry: ['./src/main', './src/app',  './src/site', './node_modules/jquery', './node_modules/jquery-validation', './node_modules/jquery-validation-unobtrusive', './node_modules/bootstrap'],
  output: {
     publicPath: '/dist/',
     path: path.join(__dirname, './../wwwroot/dist/'),
     filename: 'main.build.js'
  },
    module: {
      rules: [
        {
          test: /\.css$/,
          use: ['style-loader', 'css-loader'],
        },
      ],
    },
    resolve: {
      extensions: ['.js'],
    },
    mode: 'development',
}

if (production) {
    config.mode = 'production';
    config.devtool = 'inline-source-map';
  }
  
  module.exports = config;
"@

Add-Content -Path ".\webpack.config.js" -Value $WebPackConfigFileContent

npm run wpbuild

Set-Location ..

Remove-Item -Recurse -Force ".\wwwroot\css"

Remove-Item -Recurse -Force ".\wwwroot\js"

Remove-Item ".\Views\Shared\_Layout.cshtml.css"

Remove-Item -Recurse -Force ".\wwwroot\lib"

# Update the _Layout.cshtml file with the following.

<script src="~/dist/main.build.js" defer></script>

# Add Jquery test page and also its link in the layout page. 

dotnet build $ProjectFileNameCurrentPath

dotnet run --project $ProjectFileNameCurrentPath

############################################################################################################






















$SolutionName = "AspNetMvcWebPack"

$ProjectFileName = "AspNetMvcWebPack" + ".csproj"

$ProjectFileNameCurrentPath = "./" + $ProjectFileName

$SolutionNameCopyPath = "./" + $SolutionName + "/*"

$SolutionNamePath = "./" + $SolutionName

$NewLineString = [Environment]::NewLine

dotnet new sln --name $SolutionName

dotnet new mvc --name $SolutionName --framework net6.0

Copy-Item $SolutionNameCopyPath . -Recurse

# Now that we have copied all of the items inside of the folder, we can delete all of the items inside of it and the folder itself.

Remove-Item $SolutionNamePath -Recurse

dotnet sln add $ProjectFileName

dotnet build $ProjectFileNameCurrentPath

dotnet run --project $ProjectFileNameCurrentPath

dotnet new gitignore

New-Item -Path '.\ClientApp\src\js' -ItemType Directory

New-Item -Path '.\ClientApp\src\css' -ItemType Directory

Set-Location -Path '.\ClientApp'

npm init -y

Remove-Item -Recurse -Force node_modules

npm install jquery jquery-validation jquery-validation-unobtrusive bootstrap @popperjs/core --save

npm install webpack webpack-cli --save-dev

npm install css-loader style-loader --save-dev

npm install

# Add the following to the Package.json


    "start": "webpack serve",
    "build": "set NODE_ENV=production&&webpack",
    "wpbuild": "webpack",
    "wpdevsrv": "webpack serve",


Set-Location ..

Copy-Item -Path ".\wwwroot\css\site.css" -Destination ".\ClientApp\src\css"

# Read file contents to variable
$SourceFileContent = Get-Content -Path ".\Views\Shared\_Layout.cshtml.css" 

# Appends contents of one file to another file
# If the file does not exist, Add-Content create a new file
Add-Content -Path ".\ClientApp\src\css\site.css" -Value $NewLineString

Add-Content -Path ".\ClientApp\src\css\site.css" -Value $SourceFileContent

New-Item -Path ".\ClientApp\src\js\site.js"

$SiteJsFileContent=@"
// JS Dependencies: Popper, Bootstrap & JQuery
import '@popperjs/core';
import 'bootstrap';
import 'jquery';
// Using the next two lines is like including partial view _ValidationScriptsPartial.cshtml
import 'jquery-validation';
import 'jquery-validation-unobtrusive';

// CSS Dependencies: Bootstrap
import 'bootstrap/dist/css/bootstrap.css';

// Custom JS imports
// ... none at the moment

// Custom CSS imports
import '../css/site.css';

console.log('The \'site\' bundle has been loaded!');
"@

Add-Content -Path ".\ClientApp\src\js\site.js" -Value $SiteJsFileContent

Remove-Item -Recurse -Force ".\wwwroot\css"

Remove-Item -Recurse -Force ".\wwwroot\js"

Remove-Item ".\Views\Shared\_Layout.cshtml.css"

New-Item -Path ".\ClientApp\webpack.config.js"

$WebPackConfigFileContent=@"
const path = require('path');

module.exports = {
    entry: {
        site: './src/js/site.js'
    },
    output: {
        filename: '[name].entry.js',
        path: path.resolve(__dirname, '..', 'wwwroot', 'dist')
    },
    devtool: 'source-map',
    mode: 'development',
    module: {
        rules: [
            {
                test: /\.css$/,
                use: ['style-loader', 'css-loader'],
            },
            {
                test: /\.(eot|woff(2)?|ttf|otf|svg)$/i,
                type: 'asset'
            },
        ]
    }
};
"@

Add-Content -Path ".\ClientApp\webpack.config.js" -Value $WebPackConfigFileContent

Set-Location ".\ClientApp"

npm run wpbuild

Set-Location ..

Remove-Item -Recurse ".\wwwroot\lib"

# Add the following line and remove other script and css references from the layout file.

<script src="~/dist/site.entry.js" defer></script>

dotnet run --project $ProjectFileNameCurrentPath

