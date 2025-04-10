// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

struct User {
    uint id;
    string name;
    address addr;
}

contract Struct {
    User public user;

    function setUser(uint _id, string memory _name, address _addr) public {
        user.id = _id;
        user.name = _name;
        user.addr = _addr;
    }

    function getUser() public view returns (User memory) {
        return user;
    }
}
