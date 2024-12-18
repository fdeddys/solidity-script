// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {

    struct Task {
        string description;
        bool isComplete;
    }

    mapping (address => Task[]) public userTask;

    function addTask(string memory _description) public {
        userTask[msg.sender].push(Task(_description, false));
    }

    function completeTask(uint taskIndex) public {
        require(taskIndex < userTask[msg.sender].length, "Index put of bond");
        userTask[msg.sender][taskIndex].isComplete = true;
    }

    function getTask() public view returns (Task[] memory){
        return userTask[msg.sender];
    }

}
