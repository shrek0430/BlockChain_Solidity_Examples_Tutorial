// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

type UserId is uint;

contract UserDefinedValue {
    function getNextUserId(UserId id) public pure returns (UserId) {
        return UserId.wrap(UserId.unwrap(id) + 1);
    }
}
