// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
contract globalvar{
    address public owner;
    constructor(){
        owner=msg.sender;

    }
    function getowner() public view returns(address){
        return owner;
    }
    function isowner(address _address) public view returns(bool){
        return _address==owner;
    }
    function getCurrentBlock() public view returns(uint,uint,uint,address){
        return (block.difficulty,block.number,block.timestamp,block.coinbase);
    }
}
