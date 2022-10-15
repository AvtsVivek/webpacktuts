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

