pragma solidity ^0.8;

contract SecureDataStorage {
    address public owner;
    mapping(address => bool) public authorizedUsers;
    bytes32 private encryptedData;

    constructor() {
        owner = msg.sender;
        authorizedUsers[msg.sender] = true;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier onlyAuthorized() {
        require(authorizedUsers[msg.sender], "You are not authorized to access this data");
        _;
    }

    function addAuthorizedUser(address _user) public onlyOwner {
        authorizedUsers[_user] = true;
    }

    function removeAuthorizedUser(address _user) public onlyOwner {
        authorizedUsers[_user] = false;
    }

    function storeSensitiveData(bytes32 _data) public onlyOwner {
        encryptedData = _data;
    }

    function retrieveSensitiveData() public view onlyAuthorized returns (bytes32) {
        return encryptedData;
    }
}
