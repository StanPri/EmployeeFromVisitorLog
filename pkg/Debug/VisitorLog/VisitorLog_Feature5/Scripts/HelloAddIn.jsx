var React = require('react');
var ReactDOM = require('react-dom');
var ExampleApplication = require('./components/Display.react.jsx');

var start = new Date().getTime();
setInterval(function() {
    ReactDOM.render(
        <ExampleApplication elapsed={new Date().getTime() - start} />,
    document.getElementById('container')
);
}, 50);