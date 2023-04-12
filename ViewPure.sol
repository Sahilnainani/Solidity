// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Type{
    uint p=10;
    function viewType(uint a) public view returns(uint){
        return p+a;
    }
    function pureType(uint a,uint b) public pure returns(uint){
        return a+b;
    }
}