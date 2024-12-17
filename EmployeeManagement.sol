// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract EmployeeManagement {

    address public owner;
    uint public employeeCount;

    struct Employee {
        uint id;
        string name;
        uint age;
        uint salary;
    }

    mapping(address => Employee) public  employees;

    event EmployeeRegisterer(address indexed employeeAddress, string name, uint id);
    event SalaryUpdate(address indexed employeeAddress, uint newSalary);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner , "Only owner can perform this task");
        _;
    }

    function RegisterEmployee(address _employeeAddress, string memory _name, uint _age, uint _salary) public onlyOwner {
        require(employees[_employeeAddress].id == 0, "Employee already register" );
        employeeCount++;
        employees[_employeeAddress] = Employee(employeeCount, _name, _age, _salary);
        emit EmployeeRegisterer(_employeeAddress, _name, employeeCount);
    }

    function UpdateSalary(address _employeeAddress, uint _newSalary) public onlyOwner {
        require(employees[_employeeAddress] .id != 0, "Only owner can perform this task");
        require(employees[_employeeAddress].age < 30, "Only age more than 30 can updated ");
        employees[_employeeAddress].salary = _newSalary;
        emit SalaryUpdate(_employeeAddress, _newSalary);
    }

    function GetAnnualSalary(address _employeeAddress) public view returns (uint) {
        require(employees[_employeeAddress].id != 0, "Employee not registerd");
        return employees[_employeeAddress].salary * 12;
    }

}
