// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract T1HelloWorld {
    string public message = "Hello, World!";

    event MessageChanged(string oldMessage, string newMessage);

    function setMessage(string memory newMessage) public {
        emit MessageChanged(message, newMessage);
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
