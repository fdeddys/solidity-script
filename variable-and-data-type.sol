// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableAndDataType {

    uint public count = 10;
    bool public isActive = true;
    address public owner = msg.sender;
    int public temperature = -27;
    int public angka1 = 10;
    int public angka2 = 20;

    function addmore() public view returns (int) {
        int total = angka1 + angka2;
        return total;
    }

    function add (uint x, uint y) public pure returns (uint) {
        uint sum  = x + y;
        return sum;
    }

    function getTransactionInfo () public view returns (address, uint, uint) {
        return (owner, block.timestamp, block.number);
    }

}
