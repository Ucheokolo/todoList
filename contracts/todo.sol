// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function createTodo(string calldata _text) external {
        Todo memory todo = Todo(_text, false);
        todos.push(todo);
    }

    function updateTodo(string calldata _text, uint _index) external {
        todos[_index].text = _text;
    }

    function completeTast(uint _index) external {
        todos[_index].completed = true;
    }

    function getTask(uint _index) external view returns (Todo memory) {
        return todos[_index];
    }
}
