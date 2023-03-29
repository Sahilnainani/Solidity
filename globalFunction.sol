// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract globalFunction{
    address owner;
    uint public count;
    constructor(){
        owner=msg.sender;
    }
    function getMessageData() public pure returns (bytes memory) {
        return msg.data;
    }
}