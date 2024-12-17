// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample {

    event LogMessage(address indexed  sender, string message, uint value);

    function SendMessage(string memory _message) public  payable {
        emit LogMessage(msg.sender, _message, msg.value);
    }

}
