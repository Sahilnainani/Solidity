// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Operations{
    mapping (address=>uint) public balance;
    mapping (address=>mapping(address=>bool)) public isFrient;
    address p;
    function op(address _p) public{
        p=_p;
    }
    function get() public view returns(address){
        return p;
    }
}
