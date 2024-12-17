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
    // dont read or modified state
    function multiply(uint x, uint y) public pure returns (uint) {
        return x * y;
    }

    // View function
    // read but dont modified state
    function getOwner() public view returns (address) {
        return owner;
    }

    // Payable function
    // Accepts Ether with the function call
    function deposit() public payable {
        require(msg.value > 0, "Send Ether");
    }

    // External function
    // Accessible only from outside the contract
    function externalCall() external pure returns (string memory) {
        return "External function called";
    }

    // Restricted function using modifier
    function restrictedAccess() public onlyOwner {
        // Owner-only logic here
    }
}
