// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract opbolte{
    uint i;
    string s;
    bool b;
    address a;
    function setmyint(uint _i)public{
        i=_i;
    }
    function setmystring(string memory _s)public{
        s=_s; 
    }
    function setmybool(bool _b)public{
        b=_b; 
    }
    function setmyaddress(address _a)public{
        a=_a; 
    }

    function getmyint()public view returns(uint){
        return i;
    }
    function getmystring()public view returns(string memory){
        return s;
    }
    function getmybool()public view returns(bool){
        return b;
    }
    function getmyaddress()public view returns(address){
        return a;
    }
}