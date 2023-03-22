// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Convert{
    uint public eath;
    function getval(uint _eath)public{
        eath=_eath;
    }
    function converttowei()public view returns(uint){
        return eath*1000000000000000000;
    }
    function converttoeath()public view returns(uint){
        return eath;
    }
    function converttoagwei()public view returns(uint){
        return eath*1000000000;
    }
    
}