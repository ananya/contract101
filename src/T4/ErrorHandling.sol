// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ErrorHandling {
    uint256 public value;

    // Custom error
    error ValueTooLow(uint256 currentValue, uint256 requiredValue);

    constructor(uint256 initialValue) {
        value = initialValue;
    }

    // Function using require
    function setValueWithRequire(uint256 newValue) public {
        require(newValue > 10, "Value must be greater than 10");
        value = newValue;
    }

    // Function using assert
    function setValueWithAssert(uint256 newValue) public {
        assert(newValue > 10); // This should never fail if the logic is correct
        value = newValue;
    }

    // Function using revert
    function setValueWithRevert(uint256 newValue) public {
        if (newValue <= 10) {
            revert("Value must be greater than 10");
        }
        value = newValue;
    }

    // Function using custom error
    function setValueWithCustomError(uint256 newValue) public {
        if (newValue <= 10) {
            revert ValueTooLow(newValue, 11);
        }
        value = newValue;
    }
}
