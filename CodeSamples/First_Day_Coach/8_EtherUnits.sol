// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherUnits {
    uint256 public constant oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = (oneWei == 1);

    uint256 public constant oneGwei = 1 gwei;
    // 1 gwei is equal to 10 ** 9
    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public constant oneEth = 1 ether;
    // 1 ether is equl to 10 ** 18
    bool public isOneEth = (oneEth == 1e18);
}
