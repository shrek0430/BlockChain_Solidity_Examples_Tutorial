// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

enum State {
    Pending,
    Loading,
    Finished,
    Failed
}
contract Enum {
    State public state;

    constructor() {
        state = State.Loading;
    }

    function setPending() public {
        state = State.Pending;
    }

    function setFinished() public {
        state = State.Finished;
    }

    function getState() public view returns (State) {
        return state;
    }

    function isFinished() public view returns (bool) {
        return state == State.Finished;
    }
}
