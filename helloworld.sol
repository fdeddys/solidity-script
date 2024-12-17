// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // Solidity version

contract HelloWorld {
    string public message = "Hello, Blockchain!"; // Public variable

    // Function to update the message
    function setMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}
