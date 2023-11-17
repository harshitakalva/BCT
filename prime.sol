// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeNumber {
    function isPrime(uint256 number) public pure returns (bool) {
        // 0 and 1 are not prime numbers
        if (number <= 1) {
            return false;
        }

        // 2 is a prime number
        if (number == 2) {
            return true;
        }

        // Check for divisibility by numbers from 2 to the square root of the given number
        for (uint256 i = 2; i * i <= number; i++) {
            if (number % i == 0) {
                // If the number is divisible by any other number, it's not a prime number
                return false;
            }
        }

        // If no divisor is found, the number is prime
        return true;
    }
}
