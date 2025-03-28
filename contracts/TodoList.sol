// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
        uint createdAt;
    }

    mapping(uint => Task) public tasks;

    event TaskCreated(
        uint id,
        string content,
        bool completed,
        uint createdAt
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    event TaskDeleted(
        uint id
    );

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false, block.timestamp);
        emit TaskCreated(taskCount, _content, false, block.timestamp);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }

    function deleteTask(uint _id) public {
        require(_id <= taskCount && _id > 0, "Task does not exist");
        delete tasks[_id];
        emit TaskDeleted(_id);
    }
}
