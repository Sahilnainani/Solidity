// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Modifiers{
    uint a;
    address user;
    constructor(){
        user=msg.sender;
    }
    modifier _isuser{
        require(user==msg.sender,"Only owner can do this");
        _;
    }
    function set(uint _a)public _isuser{
        a=_a;
    }
    function get()public _isuser view returns(uint){
        return(a);
    }
}