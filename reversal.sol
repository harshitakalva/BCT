// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringReversal {
    function reverseString(string memory input) public pure returns (string memory) {
        bytes memory inputBytes = bytes(input);
        uint256 length = inputBytes.length;

        for (uint256 i = 0; i < length / 2; i++) {
            // Swap characters from the beginning and end of the string
            bytes1 temp = inputBytes[i];
            inputBytes[i] = inputBytes[length - i - 1];
            inputBytes[length - i - 1] = temp;
        }

        return string(inputBytes);
    }
}
