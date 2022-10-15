var other = require('./other');

global.jQuery = global.$ = require('jquery');

jQuery('#jqueryTestDiv').append('<p>Hello World! If you are seeing this, then jquery is loaded....</p>');

alert('Here we go');

other();
