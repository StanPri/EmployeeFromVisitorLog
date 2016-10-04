var React = require('react');
var ReactDOM = require('react-dom');
var EmployeeListItem = require('./EmployeeListItem.jsx');

var EmployeeList = React.createClass({
    render: function () {
            var items = this.props.employees.map(function (employee) {
            return (
                <EmployeeListItem key={employee.id} employee={employee} />
            );
        });
        return (
            <ul className="table-view">{items}
            </ul>
        );
      }
});

module.exports = EmployeeList;