pragma solidity ^0.8.0;

contract TaskManagement {
    struct Task {
        string description;
        bool isCompleted;
    }
    Task[] public tasks;
    function addTask(string memory description) public {
        tasks.push(Task(description, false));
    }
}
