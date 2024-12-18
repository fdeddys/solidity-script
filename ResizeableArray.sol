// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ResizeableArray {
    uint[] public numbers;

    function addNumber(uint number) public {
        numbers.push(number);
    }

    function removeAtIndex(uint index) public {
        require(index < numbers.length ,"index out of bond");

        for (uint i = index; i < numbers.length; i++) {
            numbers[i] = numbers[i+1];
        }
        numbers.pop();
    }

    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }

}
