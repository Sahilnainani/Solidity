// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract functionTypes{
    uint p=10;
    // view function
    function get()internal view returns(uint){
        return p;
    }
    // pure function
    function add(uint a, uint b)internal pure returns(uint){
        return a+b;
    }
    // payable function
    function op(uint a, uint b)external payable{
    }
}