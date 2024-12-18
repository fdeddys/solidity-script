// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayOperation {

    uint[] public numbers;

    function addNumber(uint numb) public {
        numbers.push(numb);
    }

    function deleteNumber(uint index) public {
        require(index < numbers.length,"index out of bond");
        delete numbers[index];
    }

    function getNumber() public view returns (uint[] memory) {
        return numbers;
    }
}
