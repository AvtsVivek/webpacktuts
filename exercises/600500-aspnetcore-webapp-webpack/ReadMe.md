# Asp.net core web app integration with Web pack.

- Create AspNetCore web app solution. Use the command in Commands.sh file.

- Initilize npm
  - npm init -y
- Remove node_modules
  - Remove-Item -Recurse -Force node_modules

- Install webpack, cli, jquery and bootstrap etc.
  - npm install webpack webpack-cli --save-dev
  - npm install jquery jquery-validation jquery-validation-unobtrusive bootstrap --save-dev

- Add Webpack config file. Its minimal. See the contents.
- Add webpackentry.js file 

```js
global.jQuery = global.$ = require('jquery');
```
- Add the following script commands entires to package.json file.

```js
  "scripts": {
    "start": "webpack serve",
    "prodbuild": "set NODE_ENV=production&&webpack",
    "wpbuild": "webpack",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
```

- Now execute the command to build the web pack js files. **npm run wpbuild**

- In the Pages/Shared/_Layout.cshtml file, update the scrpts as follows.
  - We are commenting out(or removing) the default screpts, and then adding the web pack script(main.build.js).
```html
    @* <script src="~/lib/jquery/dist/jquery.min.js"></script>
    <script src="~/lib/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="~/js/site.js" asp-append-version="true"></script> *@
    <script src="~/js/main.build.js" asp-append-version="true"></script>
```
- Now add some pages. JQueryTest page.

- Also update the Pages/Shared/_Layout.cshtml file to show the link in the ui

```html
<li class="nav-item">
    <a class="nav-link text-dark" asp-area="" asp-page="/JQueryTests">Jquery Tests</a>
</li>
```

- Also update the index.cshtml file as follows

```
@section Scripts
{
 <script>

    $(window).on('load', function(){ 
        alert("Page loaded. Jquery is working!!!");
    });

 </script>
} 
```

- Some notes about loading of dom, js files and css
- The web pack output of this some js files should be defered. Meaning, when a page is loading, this file should be loaded last.
- The sequence as far as I understand is as follows.
- First css(I think so because the style sheet is placed in the head section and at the top, above the body)
- Second, the dom. 
- Then the script section of a page or view in asp.net core. This script section may need jquery. 
- So the file which contains jquey should not be defered. In our case the file is loadjquery.js and this contains just the following
- **global.jQuery = global.$ = require('jquery');**
- And finally the file which contains code to maipulate dom, and that which needs jquey as well, should be defered.
- The reason for this is, the scripts section of a page or view which looks like the following should be loaded before this file.
```js
    @section Scripts
    {
        <script>
        ...
        </script>
    }
``` 
- So the sequence should be as follows.
  1. loadjquery.js, 
  2. site.js. This has css. 
  3. The scripts section(shown above).Note that the script section may need jquery. So it should be loaded first.
  4. Then main.js. This is because this script file contains reference to jqueryTestDiv as well as jquery. So the dom should be loaded

