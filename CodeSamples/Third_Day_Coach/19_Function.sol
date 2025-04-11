// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Function {
    // Functions can return multiple values.
    function returnMany() public pure returns (uint256, bool, uint256) {
        return (1, true, 2);
    }

    // Return values can be named.
    function named() public pure returns (uint256 n, bool b, uint256 m) {
        return (1, true, 2);
    }

    // Return values can be assigned to their name.
    // In this case the return statement can be omitted.
    function assigned() public pure returns (uint256 n, bool b, uint256 m) {
        n = 1;
        b = false;
        m = 3;
    }

    // Use destructuring assignment when calling another
    // function that returns multiple values.
    function destructuringAssignments()
        public
        pure
        returns (uint256, bool, uint256, uint256, uint256)
    {
        (uint256 i, bool b, uint256 j) = returnMany();

        (uint256 k, , uint256 l) = (1, 2, 3);

        return (i, b, j, k, l);
    }

    // Cannot use map for either input or output

    // Can use array for input
    function arrayInput(uint256[] memory _arr) public {}

    // Can use array for output
    uint256[] public arr;

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
}

// Call function with key-value inputs
contract XYZ {
    function someFuncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {}

    function callFunc() external pure returns (uint256) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint256) {
        return
            someFuncWithManyInputs({
                a: address(0),
                b: true,
                c: "c",
                x: 1,
                y: 2,
                z: 3
            });
    }
}
