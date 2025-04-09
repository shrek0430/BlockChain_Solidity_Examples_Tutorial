// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 public count;

    // Function that get the current count state
    function get() public view returns (uint256) {
        return count;
    }

    // Function that increment count by 1
    function inc() public {
        count += 1;
    }

    // Function that decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
