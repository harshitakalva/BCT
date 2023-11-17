// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConditionalStatements {
    uint256 public result;

    function exampleIfStatement(uint256 a, uint256 b) public view returns (uint256) {
        if (a > b) {
            return a;
        } else {
            return b;
        }
    }

    function exampleIfElseIfStatement(uint256 a, uint256 b) public view returns (uint256) {
        if (a > b) {
            return a;
        } else if (a < b) {
            return b;
        } else {
            return 0; // Numbers are equal
        }
    }

    function exampleTernaryOperator(uint256 a, uint256 b) public view returns (uint256) {
        return (a > b) ? a : b;
    }

    function exampleSwitchStatement(uint256 option) public view returns (uint256) {
        // Switch statement to handle different options
        // Note: Solidity 0.8.0 introduced native switch statements
        // but they can only be used with enums or literals (constants)
        // For example purposes, we use if-else statements here.

        if (option == 1) {
            return 100;
        } else if (option == 2) {
            return 200;
        } else if (option == 3) {
            return 300;
        } else {
            return 0;
        }
    }
}
