// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Primitive {
    bool public boo = true;

    // non-negative
    // 0 ~ 2 ** 8 - 1
    uint8 public u8 = 8;
    // 0 ~ 2 ** 256 - 1
    uint256 public u256 = 256;
    // 0 ~ 2 ** 256 - 1
    uint public u = 256;

    // negative available
    // -2 ** 7 ~ 2 ** 7 - 1
    int8 public i8 = -1;
    // -2 ** 255 ~ 2 ** 255 - 1
    int256 public i256 = 256;
    // -2 ** 255 ~ 2 ** 255 - 1
    int public i = -256;

    // -2 ** 255
    int256 public minInt = type(int256).min;
    // 2 ** 256 - 1
    int256 public maxInt = type(int256).max;

    // 20 bytes
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two types of bytes :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
