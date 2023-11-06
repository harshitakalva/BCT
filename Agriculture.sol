
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AgricultureProvenance {
    address public owner;
    string public productName;
    string public location;
    uint256 public quantity;
    string public harvestDate;
    string public batchNumber;
    bool public isCertified;
    
    event ProductRecorded(
        string productName,
        string location,
        uint256 quantity,
        string harvestDate,
        string batchNumber,
        bool isCertified
    );

    constructor(string memory _productName, string memory _location, uint256 _quantity, string memory _harvestDate, string memory _batchNumber, bool _isCertified) {
        owner = msg.sender;
        productName = _productName;
        location = _location;
        quantity = _quantity;
        harvestDate = _harvestDate;
        batchNumber = _batchNumber;
        isCertified = _isCertified;

        emit ProductRecorded(productName, location, quantity, harvestDate, batchNumber, isCertified);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can execute this.");
        _;
    }

    function updateProduct(string memory _productName, string memory _location, uint256 _quantity, string memory _harvestDate, string memory _batchNumber, bool _isCertified) public onlyOwner {
        productName = _productName;
        location = _location;
        quantity = _quantity;
        harvestDate = _harvestDate;
        batchNumber = _batchNumber;
        isCertified = _isCertified;

        emit ProductRecorded(productName, location, quantity, harvestDate, batchNumber, isCertified);
    }
}