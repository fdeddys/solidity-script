// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    // Pure function
    function multiply(uint x, uint y) public pure returns (uint) {
        return x * y;
    }

    // View function
    function getOwner() public view returns (address) {
        return owner;
    }

    // Payable function
    function deposit() public payable {
        require(msg.value > 0, "Send Ether");
    }

    // External function
    function externalCall() external pure returns (string memory) {
        return "External function called";
    }

    // Restricted function using modifier
    function restrictedAccess() public onlyOwner {
        // Owner-only logic here
    }
}
