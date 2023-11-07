// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleInvoice {
    address public owner;
    string public invoiceData;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can access this function");
        _;
    }

    function createInvoice(string memory data) public onlyOwner {
        invoiceData = data;
    }

    function getInvoice() public view returns (string memory) {
        return invoiceData;
    }
}
