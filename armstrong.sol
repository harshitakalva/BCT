// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArmstrongNumber {
    function isArmstrongNumber(uint256 number) public pure returns (bool) {
        uint256 tempNumber = number;
        uint256 numOfDigits = 0;
        uint256 result = 0;

        // Count the number of digits in the given number
        while (tempNumber != 0) {
            tempNumber /= 10;
            numOfDigits++;
        }

        tempNumber = number;

        // Calculate the Armstrong number
        while (tempNumber != 0) {
            uint256 digit = tempNumber % 10;
            result += digit ** numOfDigits;
            tempNumber /= 10;
        }

        // Check if the result is equal to the original number
        return result == number;
    }
}
