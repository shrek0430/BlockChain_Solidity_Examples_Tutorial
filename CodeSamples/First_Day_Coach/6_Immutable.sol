// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Immutable {
    // these variables can be set inside constructor but can't be modified after that
    address public immutable myAddr;
    uint256 public immutable myId;

    constructor(uint256 id) {
        myAddr = msg.sender;
        myId = id;
    }
}
