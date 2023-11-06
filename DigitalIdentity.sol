// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DigitalIdentity {
    address public owner;
    string public username;
    string public email;
    bool public isVerified;

    event IdentityCreated(address indexed owner, string username, string email);
    event IdentityVerified(address indexed owner);
    event IdentityUpdated(address indexed owner, string newUsername, string newEmail);

    constructor(string memory _username, string memory _email) {
        owner = msg.sender;
        username = _username;
        email = _email;
        isVerified = false;

        emit IdentityCreated(owner, username, email);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can execute this.");
        _;
    }

    function verifyIdentity() public onlyOwner {
        isVerified = true;
        emit IdentityVerified(owner);
    }

    function updateIdentity(string memory newUsername, string memory newEmail) public onlyOwner {
        username = newUsername;
        email = newEmail;
        emit IdentityUpdated(owner, newUsername, newEmail);
    }
}