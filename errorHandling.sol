// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errorHandling{

    function divide(uint _a,uint _b)public pure returns(uint){
        require(_b!=0,"second value must be greater than 0");
        uint result=_a/_b;

        assert(result*_b==_a);
        return result;
    }
    uint p=10;
    function withdraw(uint v) public payable{
        if(p<v){
            revert("Failed to withdraw");
        }
        p=p-v;
    } 
    function get() public view returns(uint){
        return(p);
    }
}