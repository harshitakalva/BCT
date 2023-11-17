// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FibonacciSeries {
    function generateFibonacci(uint256 numberOfTerms) public pure returns (uint256[] memory) {
        uint256[] memory fibSeries = new uint256[](numberOfTerms);

        // First two terms of the Fibonacci series
        fibSeries[0] = 0;
        fibSeries[1] = 1;

        // Generate the Fibonacci series
        for (uint256 i = 2; i < numberOfTerms; i++) {
            fibSeries[i] = fibSeries[i - 1] + fibSeries[i - 2];
        }

        return fibSeries;
    }
}
