// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Modifier {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "invalid sender");
        _;
    }

    modifier isBigger(uint256 _i) {
        require(_i < 100, "counter bigger than 100");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function checkOwner() public view onlyOwner returns (bool) {
        return true;
    }

    function addCounter(uint256 _n) public pure isBigger(_n) returns (uint256) {
        _n++;
        return _n;
    }
}
