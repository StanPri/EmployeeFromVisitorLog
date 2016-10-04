var React = require('react');
var ReactDOM = require('react-dom');
var HomePage = require('./components/HomePage.jsx');
var EmployeePage = require('./components/EmployeePage.jsx');


router.addRoute('', function() {
    ReactDOM.render(
            <HomePage service={employeeService}/>,
        document.getElementById('app')
    );
});

router.addRoute('employees/:id', function(id) {
    ReactDOM.render(
            <EmployeePage employeeId={id} service={employeeService }/>,
        document.getElementById('app')
    );
});

router.start();
