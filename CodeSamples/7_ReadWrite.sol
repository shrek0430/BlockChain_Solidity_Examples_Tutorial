// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
    // State variable to store a number
    uint256 public num;

    // You need to send a transaction to write to a state variable
    function write(uint256 _num) public {
        num = _num;
    }

    // You don't have to send a transaction to read a state variable
    function read() public view returns (uint256) {
        return num;
    }
}
