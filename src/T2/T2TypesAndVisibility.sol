// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract DataTypesAndVisibility {
    // Basic data types
    uint public number;
    bool public isActive;
    string private message;
    address internal owner;

    // Constructor to initialize the contract
    constructor(uint _number, bool _isActive, string memory _message) {
        number = _number;
        isActive = _isActive;
        message = _message;
        owner = msg.sender;
    }

    // Public function to set the number
    function setNumber(uint _number) public {
        number = _number;
    }

    // Internal function to set the message
    function setMessage(string memory _message) internal {
        message = _message;
    }

    // Private function to set the owner
    function setOwner(address _owner) private {
        owner = _owner;
    }

    // View function to get the message
    function getMessage() public view returns (string memory) {
        return message;
    }

    // Pure function to add two numbers
    function addNumbers(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Function to demonstrate internal visibility
    function updateMessage(string memory _newMessage) public {
        setMessage(_newMessage);
    }

    // Function to demonstrate private visibility
    function changeOwner(address _newOwner) public {
        setOwner(_newOwner);
    }
}
