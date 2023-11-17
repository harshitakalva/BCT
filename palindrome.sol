pragma solidity ^0.8.0;

contract Palindrome {
    function isPalindrome(string memory str) public pure returns (bool) {
        bytes memory bStr = bytes(str);
        uint len = bStr.length;
        
        for (uint i = 0; i < len / 2; i++) {
            if (bStr[i] != bStr[len - 1 - i]) {
                return false;
            }
        }
        
        return true;
    }
}
