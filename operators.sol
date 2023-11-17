// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OperatorExample {
    function arithmeticOperators(uint256 a, uint256 b) public pure returns (uint256) {
        // Arithmetic Operators
        return a + b; // Addition
    }

    function comparisonOperators(uint256 a, uint256 b) public pure returns (bool) {
        // Comparison Operators
        return a == b;  // Equal to
    }

    function logicalOperators(bool x, bool y) public pure returns (bool) {
        // Logical Operators
        return x && y; // Logical AND
    }

    function bitwiseOperators(uint256 a, uint256 b) public pure returns (uint256) {
        // Bitwise Operators
        return a & b; // Bitwise AND
    }
}
