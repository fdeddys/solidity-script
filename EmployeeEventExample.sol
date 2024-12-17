// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeEventExample {

    address public owner;

    event EmployeeAdded(address indexed employeeAddress, string name);
    event EmployeeRemove(address indexed  employeeAddress, string name);

    constructor() {
        owner = msg.sender;
    }

    struct Employee {
        string name;
        uint age;
    }

    mapping (address => Employee) public employees;

    function addEmployee(address _employeeAddress, string memory _name, uint _age) public  {
        employees[_employeeAddress] = Employee(_name, _age);
        emit EmployeeAdded(_employeeAddress, _name);
    }

    function removeEmployee(address _employeeAddress) public {
        string memory name = employees[_employeeAddress].name;
        delete employees[_employeeAddress];
        emit EmployeeRemove(_employeeAddress, name);
    }

}
