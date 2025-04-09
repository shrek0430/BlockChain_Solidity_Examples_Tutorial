// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables {
    // state variables are stored on blockchain
    string public text = "Hello";
    uint256 public num = 0;

    function doSomething() public view {
        // local variable which are not stored on blockchain
        uint256 i = 0;

        // global variable that presents blockchain state
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
    }
}
