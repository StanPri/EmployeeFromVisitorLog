var React = require('react');
var ReactDOM = require('react-dom');
var Header = require('./Header.jsx');
var SearchBar = require('./SearchBar.jsx');
var EmployeeList = require('./EmployeeList.jsx');

var HomePage = React.createClass({
    getInitialState: function () {
        return { employees: [] }
    },
    searchHandler: function (key) {
        this.props.service.findByName(key).done(function (result) {
            this.setState({ searchKey: key, employees: result });
        }.bind(this));
    },
    render: function () {
        return (
            <div>
                <Header text="Employee Directory" back="false" />
                <SearchBar searchHandler={this.searchHandler} />
                <div className="content">
                    <EmployeeList employees={this.state.employees} />
                </div>
            </div>
        );
    }
});

module.exports = HomePage;